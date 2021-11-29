//
//  SimulationView.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 25/10/21.
//

import Foundation
import SwiftUI
import RealityKit
import ARKit
import FocusEntity

class SceneInit: ObservableObject {
    @Published var sceneState:Int = 0 {
        willSet {
            objectWillChange.send()
        }
    }
    
}

struct RealityKitView: UIViewRepresentable {
    @EnvironmentObject var sceneInit: SceneInit
    func makeUIView(context: Context) -> ARView {
        let view = ARView()

        // Start AR session
        

        let session = view.session
//        let config = ARWorldTrackingConfiguration()
//        config.planeDetection = [.horizontal]
//        session.run(config)

        // Add coaching overlay


        let coachingOverlay = ARCoachingOverlayView()
        coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coachingOverlay.session = session
        coachingOverlay.goal = .horizontalPlane
        view.addSubview(coachingOverlay)

        context.coordinator.view = view
        session.delegate = context.coordinator

        // Handle taps
        view.addGestureRecognizer(
            UITapGestureRecognizer(
                target: context.coordinator,
                action: #selector(Coordinator.handleTap)
            )
        )


        return view
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    class Coordinator: NSObject, ARSessionDelegate, ObservableObject {
        
        weak var view: ARView?
        @ObservedObject var sceneInit = SceneInit()
        var focusEntity: FocusEntity?
        var skinBurnScene: NewSkinBurn.Scene!

        func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
            if self.sceneInit.sceneState == 0 {
                guard let view = self.view else { return }
//                print("Anchor added to the scene: ", anchors)
                self.focusEntity = FocusEntity(on: view, style: .classic(color: .yellow))

            }
        }

        @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
            guard let view = self.view else { return }
            print(self.sceneInit.sceneState)
            if self.sceneInit.sceneState == 0 {
                DispatchQueue.main.async {
                    do {
                        let anchor = try NewSkinBurn.loadScene()
                        self.skinBurnScene = anchor
                        view.scene.addAnchor(anchor)
                        self.sceneInit.sceneState = 1
                    }
                    catch {
                        print(error)
                    }
                    
                }
//                NewSkinBurn.loadSceneAsync(completion: { (result) in
//                    do {
//                        self.skinBurnScene = try result.get()
//                        view.scene.addAnchor(self.skinBurnScene)
//                        print("Suksessss")
//                        self.sceneInit.sceneState += 1
//                    } catch {
//                        print(error)
//                    }
//                })
            } else if self.sceneInit.sceneState == 1 {
                self.sceneInit.sceneState = 2
                self.skinBurnScene.notifications.startScene1.post()
            } else {
                if let tapLocation = sender?.location(in: view) {
                    guard let rayResult = self.view?.ray(through: tapLocation) else {return}
                    if let result = self.view?.scene.raycast(origin: rayResult.origin, direction: rayResult.direction) {
                        print(result)
                        for object in result {
                            print(object.entity.name)
                            if object.entity.name == "stoveSwitch" {
                                skinBurnScene.notifications.stoveSwitch.post()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    self.sceneInit.sceneState = 3
                                }
                            }
                            else if object.entity.name == "person2" || object.entity.name == "Ground Plane" && self.sceneInit.sceneState == 3{
                                skinBurnScene.notifications.markWound.post()
                                self.sceneInit.sceneState = 4
                            }
                            else if object.entity.name == "kran" {
                                skinBurnScene.notifications.goToSink.post()
                                self.sceneInit.sceneState = 5
                            } else if object.entity.name == "clingFilm" {
                                skinBurnScene.notifications.pickUpCling.post()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    self.sceneInit.sceneState = 6
                                }
                            } else if object.entity.name == "person5" || object.entity.name == "Ground Plane" && self.sceneInit.sceneState == 6{
                                skinBurnScene.notifications.warpCling.post()
                                self.sceneInit.sceneState = 7
                            }
                        }
                    }
                }
            }
        }
    }

    func updateUIView(_ uiView: ARView, context: Context) {

    }


}



struct SimulationView: View {
//    @ObservedObject var rkView: RealityKitView.Coordinator
    var screenSize = UIScreen.main.bounds
    @StateObject var sceneInit = SceneInit()
    
    var steps: [String] = ["Stop the burning process",
                           "Check skin surface splashed with hot water",
                           "Cool the burn with cool running water",
                           "Find cling film around",
                           "Cover the burn with cling film"]
    
    var body: some View {
        ZStack{
            
            RealityKitView()
                .ignoresSafeArea()
            
            VStack{
                Text("Instruction")
                    .foregroundColor(Color("Color Primary"))
                ForEach((0...4), id: \.self){i in
                    HStack{
                        Text(steps[i])
                            .padding(8)
                            .foregroundColor(Color.white)
                            .frame(width: 300, alignment: .leading)
                            .background(i + 1 <= self.sceneInit.sceneState ? Color("Color Primary") : Color.white.opacity(0.6))
                            .cornerRadius(15)
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(i + 1 <= self.sceneInit.sceneState ? Color("Color Primary") : Color("Color Secondary 2"))
                            .frame(width: 50)
                    }
                    .padding(.leading, 12)
                    .padding(.top, 4)
                }
            }
            .background(Color.gray.opacity(0.8))
            .cornerRadius(15)
            .frame(width: screenSize.width * 0.95, height: screenSize.height * 0.90, alignment: .topLeading)

            Image(systemName: "speaker.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 48))
                .position(x: 0, y: 380)
                .frame(width: 50, height: 50, alignment: .center)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

extension SimulationView {
    func startSimulation () {
        print("Hello")
    }
}

struct SimulationView_Previews: PreviewProvider {
    static var previews: some View {
        SimulationView()
.previewInterfaceOrientation(.landscapeRight)
    }
}
