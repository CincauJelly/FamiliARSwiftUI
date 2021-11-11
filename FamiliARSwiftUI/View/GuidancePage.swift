//
//  GuidancePage.swift
//  FamiliARSwiftUI
//
//  Created by Ivan Valentino Sigit on 06/11/21.
//

import Foundation
import SwiftUI

struct GuidanceView: View {
    
    @State var state = 0
    
    var body: some View {
        ZStack(){
            Color("Color Secondary 2").ignoresSafeArea()
            Image("Select Learning")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.1)
                .frame(width: 394, height: 394, alignment: .center)
                .padding()
            VStack(){
                Text("Guidance")
                    .foregroundColor(Color("Color Secondary blue"))
                    .font(.system(size: 36, weight: .bold, design: .default))
                    .frame(alignment: .top)
                    .padding(100)
                if state == 0 {
                    Text("Prepare to scan the surface.\nMake sure the surface area is more or not less than 2 X 2 M.")
                        .foregroundColor(Color("Color Secondary blue"))
                        .multilineTextAlignment(.center)
                        .padding(EdgeInsets(top: 80, leading: 0, bottom: 80, trailing: 0))
                } else {
                Text("You will be practice skin burn simulation, in this section you will not guide by instruction.\nYou should remeber what you have learn in learning simulation and do by yourself,\nWe provide time for track your learning progress,\nso, do your best and good luck! ")
                    .foregroundColor(Color("Color Secondary blue"))
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 50, leading: 0, bottom: 50, trailing: 0))
                }
                Spacer()
                HStack(){
                    Image("explore first aid select")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .opacity(0.1)
                        .frame(width: 250, height: 250, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 150))
                    if state == 0{
                        NavigationLink(destination: SimulationView()) {
                            Button("Continue"){
                                print("tapped")
                                //Navigate to Next Scene
                            }
                            .padding()
                            .frame(maxWidth: 300)
                            .foregroundColor(.white)
                            .background(Color("Color Primary"))
                            .clipShape(Capsule())
                        }
                    } else {
                        NavigationLink(destination: PracticeView()) {
                            Button("Continue"){
                                print("tapped")
                                //Navigate to Next Scene
                            }
                            .padding()
                            .frame(maxWidth: 300)
                            .foregroundColor(.white)
                            .background(Color("Color Primary"))
                            .clipShape(Capsule())
                        }
                    }
                    Image("explore first aid select")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .opacity(0.1)
                        .frame(width: 250, height: 250, alignment: .trailing)
                        .padding(EdgeInsets(top: 0, leading: 150, bottom: 0, trailing: 0))
                }
            }
        }
    }
}

struct GuidanceView_Previews: PreviewProvider {
    static var previews: some View {
        GuidanceView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}


