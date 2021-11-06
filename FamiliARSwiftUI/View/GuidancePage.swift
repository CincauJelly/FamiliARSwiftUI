//
//  GuidancePage.swift
//  FamiliARSwiftUI
//
//  Created by Ivan Valentino Sigit on 06/11/21.
//

import Foundation
import SwiftUI

struct GuidanceView: View {
    var body: some View {
        ZStack(){
            Color("Color Secondary 2").ignoresSafeArea()
            Image("select learningsimulation")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.05)
                .frame(width: 394, height: 394, alignment: .center)
                .padding()
            VStack(alignment: .center){
                Text("Guidance")
                    .foregroundColor(Color("Color Secondary blue"))
                    .font(.system(size: 36, weight: .bold, design: .default))
                    .frame(alignment: .top)
                    .padding()
                Text("You will be practice skin burn simulation, in this section you will not guide by instruction.\nYou should remeber what you have learn in learning simulation and do by yourself,\nWe provide time for track your learning progress,\nso, do your best and good luck! ")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                Button("Continue"){
                    print("tapped")
                    //Navigate to Next Scene
                }
                .padding()
                .frame(maxWidth: 300)
                .foregroundColor(.white)
                .background(Color("Color Primary"))
                .clipShape(Capsule())
                HStack(alignment: .bottom){
                    Image("explore first aid select")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .opacity(0.1)
                        .frame(width: 250, height: 250, alignment: .leading)
                        .padding()
                    Image("explore first aid select")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .opacity(0.1)
                        .frame(width: 250, height: 250, alignment: .trailing)
                        .padding()
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


