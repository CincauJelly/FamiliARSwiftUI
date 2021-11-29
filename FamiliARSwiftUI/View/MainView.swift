//
//  MainView.swift
//  FamiliARSwiftUI
//
//  Created by Azrullah Kainage on 05/11/21.
//

import SwiftUI
import SceneKit

struct MainView: View {
    @State var selected = "Skin Burn";
    var screenSize = UIScreen.main.bounds
    
    
    var body: some View {
//        NavigationView {
            ZStack {
                SceneView(scene: {
                    let scene = SCNScene(named: "SkinBurn.usdz")!
                    scene.background.contents = UIColor.black /// here!
                    return scene
                }(), options: [.autoenablesDefaultLighting, .allowsCameraControl])
                .frame(width: screenSize.width, height: screenSize.height)
                .padding(.trailing, 30)
                .ignoresSafeArea()
                VStack{
                    HStack {
                        NavigationLink("Start Simulation", destination: GuidanceView(states: "learn"))
                            .frame(width: 279, height: 62)
                            .background(Color("Color Primary"))
                            .cornerRadius(50)
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold))
                            .padding(.trailing, 60)
                            .padding(.bottom, 50)
//                        PrimaryButtonComp(title: "Start Simulation")
//                        .padding(.trailing, 60)
//                        .padding(.bottom, 50)
                    }
                    .frame(width: screenSize.width * 0.9 ,alignment: .trailing)
                    HStack {
                        BtnOptionComponent(title: "Skin Burn", selected: $selected)
                        BtnOptionComponent(title: "Bycycle Accident", selected: $selected)
                        BtnOptionComponent(title: "Fall From Stairs", selected: $selected)
                        BtnOptionComponent(title: "Knife Cuts", selected: $selected)
                    }
                }
                .frame(width: screenSize.width * 0.7, height: screenSize.height * 0.7, alignment: .bottom)
            }
//        }
//        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
.previewInterfaceOrientation(.landscapeRight)
    }
}
