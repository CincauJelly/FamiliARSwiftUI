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
        let session = view.session
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = [.horizontal]
        session.run(config)

        // Add coaching overlay
        let coachingOverlay = ARCoachingOverlayView()
        coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coachingOverlay.session = session
        coachingOverlay.goal = .horizontalPlane
        view.addSubview(coachingOverlay)

        // Set debug options
        #if DEBUG
        view.debugOptions = [.showFeaturePoints, .showAnchorOrigins, .showAnchorGeometry]
        #endif
        
        // Handle ARSession events via delegate
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
        var focusEntity: FocusEntity?

        func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
            guard let view = self.view else { return }
            print("Anchor added to the scene: ", anchors)
            self.focusEntity = FocusEntity(on: view, style: .classic(color: .yellow))
        }
        
        @objc func handleTap() {
            guard let view = self.view, let focusEntity = self.focusEntity else { return }

            // Create a new anchor to add content to
            let anchor = AnchorEntity()
            view.scene.anchors.append(anchor)
            
            // Add a Box entity with a blue material
            let box = MeshResource.generateBox(size: 0.5, cornerRadius: 0.05)
            let material = SimpleMaterial(color: .blue, isMetallic: true)
            let diceEntity = ModelEntity(mesh: box, materials: [material])
            diceEntity.position = focusEntity.position

            anchor.addChild(diceEntity)
        }
    }

    
    func updateUIView(_ uiView: ARView, context: Context) {
        
    }
}

struct SimulationView: View {
    var body: some View {
        ZStack{
            
            RealityKitView()
                .ignoresSafeArea()
            
            VStack{
                Text("Instruction")
                    .foregroundColor(Color("Color Primary"))
                    .font(.system(size:24, weight:.bold, design: .default))
                ForEach((1...5), id: \.self){i in
                    HStack{
                        Text("Step \(i)")
                            .padding()
                            .foregroundColor(Color.white)
                            .frame(width: 300, alignment: .leading)
                            .background(Color.red.opacity(0.6))
                            .cornerRadius(15)
                        Image(systemName: "checkmark.circle.fill")
                            .padding()
                            .foregroundColor(Color.white)
                            .frame(width: 50)
                    }
                }
            }
            .padding()
            .background(Color.gray.opacity(0.4))
            .cornerRadius(15)
            .position(x: -270, y: -120)
            .frame(width: 200, height: 150, alignment: .leading)
            
            Text("00.00")
                .padding()
                .background(Color.white.opacity(0.0))
                .cornerRadius(15)
                .position(x: 600, y: -350)
                .frame(width: 100, height: 50, alignment: .leading)
            
            Image(systemName: "speaker.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 48))
                .position(x: 0, y: 330)
                .frame(width: 50, height: 50, alignment: .center)
        }
    }
}

struct SimulationView_Previews: PreviewProvider {
    static var previews: some View {
        SimulationView()
        .previewInterfaceOrientation(.landscapeLeft)
    }
}
