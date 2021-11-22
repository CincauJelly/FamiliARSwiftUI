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
    
    let states: String
    
    init(states: String){
        self.states = states
    }
    
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
                Spacer()
                Text("Guidance")
                    .foregroundColor(Color("Color Secondary blue"))
                    .font(.system(size: 36, weight: .bold, design: .default))
                    .frame(alignment: .top)
                    .padding()
                Spacer()
                if states == "learn" {
                    Text("Prepare to scan the surface.\nMake sure the surface area is more or not less than 2 X 2 M.")
                        .foregroundColor(Color("Color Secondary blue"))
                        .multilineTextAlignment(.center)
//                        .padding(EdgeInsets(top: 80, leading: 0, bottom: 80, trailing: 0))
                } else {
                Text("You will be practice skin burn simulation, in this section you will not guide by instruction.\nYou should remeber what you have learn in learning simulation and do by yourself,\nWe provide time for track your learning progress,\nso, do your best and good luck! ")
                    .foregroundColor(Color("Color Secondary blue"))
                    .multilineTextAlignment(.center)
//                    .padding(EdgeInsets(top: 50, leading: 0, bottom: 50, trailing: 0))
                }
                Spacer()
                HStack(){
                    Spacer()
                    Image("explore first aid select")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .opacity(0.1)
                        .frame(width: 250, height: 250, alignment: .leading)
//                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 150))
                    Spacer()
                    if states == "learn"{
                        NavigationLink(destination: SimulationView()) {
                            Text("Continue")
                            .padding()
                            .frame(minWidth: 200, maxWidth: 300)
                            .foregroundColor(.white)
                            .background(Color("Color Primary"))
                            .clipShape(Capsule())
                        }
                    } else {
                        NavigationLink(destination: PracticeView()) {
                            Text("Continue")
                            .padding()
                            .frame(minWidth: 200, maxWidth: 300)
                            .foregroundColor(.white)
                            .background(Color("Color Primary"))
                            .clipShape(Capsule())
                        }
                    }
                    Spacer()
                    Image("explore first aid select")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .opacity(0.1)
                        .frame(width: 250, height: 250, alignment: .trailing)
//                        .padding(EdgeInsets(top: 0, leading: 150, bottom: 0, trailing: 0))
                    Spacer()
                }
            }
        }
    }
}

struct GuidanceView_Previews: PreviewProvider {
    static var previews: some View {
        GuidanceView(states: "practice")
.previewInterfaceOrientation(.landscapeLeft)
    }
}


