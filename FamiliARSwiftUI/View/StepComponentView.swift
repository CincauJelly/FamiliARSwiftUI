//
//  StepComponentView.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 09/11/21.
//

import SwiftUI

struct StepComponentView: View {
    var descrition: String
    var imageName: String
    var destinationPage = SimulationView()
    
    
    
    var body: some View {
        VStack{
            Spacer()
            Image("\(imageName)")
                .resizable()
                .scaledToFit()
                .frame(width: 930.0, height: 506.0)
            Spacer()
            Text("\(descrition)")
                .frame(width: 800)
                .padding()
                .foregroundColor(Color(#colorLiteral(red: 255, green: 246, blue: 243, alpha: 1)))
                .background(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                .cornerRadius(10)
            
            
            Spacer(minLength: 50)
            HStack(spacing: 120) {
                NavigationLink(destination: Text("sad"), label: {
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 38, height: 38)
                        .scaledToFit()
                        .rotationEffect(.radians(.pi))
                        .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                })
                Text("1/6").foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                NavigationLink(destination: destinationPage, label: {
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 38, height: 38)
                        .scaledToFit()
                        .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                })
            }
            Spacer()
        }
        .navigationBarTitle("Puncture", displayMode: .inline)
        .offset(y: -60)
    }
}

struct StepComponentView_Previews: PreviewProvider {
    static var previews: some View {
        StepComponentView(descrition: "test", imageName: "Puncture_Step2")
.previewInterfaceOrientation(.landscapeRight)
    }
}
