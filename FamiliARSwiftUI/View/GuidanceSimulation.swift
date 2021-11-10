//
//  Guidance Simulation.swift
//  FamiliARSwiftUI
//
//  Created by Ivan Valentino Sigit on 10/11/21.
//

import Foundation
import SwiftUI

struct GuidanceSimulationView: View {
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
                Text("Prepare to scan the surface.\nMake sure the surface area is more or not less than 2 X 2 M.")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 80, leading: 0, bottom: 80, trailing: 0))
                HStack(){
                    Image("explore first aid select")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .opacity(0.1)
                        .frame(width: 250, height: 250, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 150))
                    Button("Continue"){
                        print("tapped")
                        //Navigate to Next Scene
                    }
                    .padding()
                    .frame(maxWidth: 300)
                    .foregroundColor(.white)
                    .background(Color("Color Primary"))
                    .clipShape(Capsule())
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

struct GuidanceSimulationView_Previews: PreviewProvider {
    static var previews: some View {
        GuidanceSimulationView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
