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

struct RealityKitView: UIViewRepresentable {

    func makeUIView(context: Context) -> ARView {
        let view = ARView()

        // Start AR session

        let sceneState = makeCoordinator().sceneState

        let session = view.session
//        let config = ARWorldTrackingConfiguration()
//        config.planeDetection = [.horizontal]
//        session.run(config)

        // Add coaching overlay


        let coachingOverlay = ARCoachingOverlayView()
        coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coachingOverlay.session = session
        coachingOverlay.goal = .horizontalPlane
        if sceneState == 0 {
            view.addSubview(coachingOverlay)
        }

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

    class Coordinator: NSObject, ARSessionDelegate {
        weak var view: ARView?
        var sceneState = 0
        var focusEntity: FocusEntity?
        let skinBurnScene = try! Macro.loadStep1()

        func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
            if self.sceneState == 0 {
                guard let view = self.view else { return }
//                print("Anchor added to the scene: ", anchors)
                self.focusEntity = FocusEntity(on: view, style: .classic(color: .yellow))

            }
        }

        @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
            guard let view = self.view else { return }

            if sceneState == 0 {
                self.sceneState += 1

                DispatchQueue.main.async {
                    view.scene.addAnchor(self.skinBurnScene)
                }
            } else if self.sceneState == 1 {
                self.sceneState += 1
                self.skinBurnScene.notifications.charaAnimation.post()
            } else {
                if let tapLocation = sender?.location(in: view) {
                    guard let rayResult = self.view?.ray(through: tapLocation) else {return}

                    if let result = self.view?.scene.raycast(origin: rayResult.origin, direction: rayResult.direction) {
                        for object in result {
                            if object.entity.name == "stoveSwitch" {
                                skinBurnScene.notifications.stoveSwitch.post()
                            }
//                            else if object.entity.name == "person" {
//                                skinBurnScene.notifications.startStep2.post()
//                            } else if object.entity.name == "kran" {
//                                skinBurnScene.notifications.MovetoSink.post()
//                            } else if object.entity.name == "cling" {
//                                skinBurnScene.notifications.pickCling.post()
//                            } else if object.entity.name == "person5" {
//                                skinBurnScene.notifications.warpCling.post()
//                            }
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
    var currentStep = 0
    var screenSize = UIScreen.main.bounds
    
    var steps: [String] = ["Stop the burning process",
                           "Check skin surface splashed with hot water",
                           "Cool the burn with cool running water",
                           "Find cling film around",
                           "Cover the burn with cling film"]
    
    var body: some View {
        ZStack{
            
            RealityKitView()
                .ignoresSafeArea()
            
//            VStack{
//                Text("Instruction")
//                    .foregroundColor(Color("Color Primary"))
//                ForEach((0...4), id: \.self){i in
//                    HStack{
//                        Text(steps[i])
//                            .padding(8)
//                            .foregroundColor(Color.white)
//                            .frame(width: 300, alignment: .leading)
//                            .background(i <= currentStep ? Color("Color Primary") : Color.white.opacity(0.6))
//                            .cornerRadius(15)
//                        Image(systemName: "checkmark.circle.fill")
//                            .foregroundColor(i <= currentStep ? Color("Color Primary") : Color("Color Secondary 2"))
//                            .frame(width: 50)
//                    }
//                    .padding(.leading, 12)
//                    .padding(.top, 4)
//                }
//            }
//            .background(Color.gray.opacity(0.8))
//            .cornerRadius(15)
//            .frame(width: screenSize.width * 0.95, height: screenSize.height * 0.95, alignment: .topLeading)
//
//            Text("00.00")
//                .padding()
//                .background(Color.white.opacity(0.0))
//                .cornerRadius(15)
//                .position(x: 600, y: -350)
//                .frame(width: 100, height: 50, alignment: .leading)
//
//            Image(systemName: "speaker.fill")
//                .foregroundColor(Color.white)
//                .font(.system(size: 48))
//                .position(x: 0, y: 380)
//                .frame(width: 50, height: 50, alignment: .center)
        }
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
    }
}
