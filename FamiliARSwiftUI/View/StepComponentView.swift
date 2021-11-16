//
//  StepComponentView.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 11/11/21.
//

import Foundation
import SwiftUI

struct StepComponentView: View {
    var title: String
    var descrition = ""
    var imageName: String
    var step = ""
    
    
    var body: some View {
        VStack {
            Image("\(imageName)")
                .resizable()
                .scaledToFit()
                .frame(width: 930.0, height: 506.0)
            Text("\(descrition)")
                .frame(width: 800)
                .padding()
                .foregroundColor(Color(#colorLiteral(red: 255, green: 246, blue: 243, alpha: 1)))
                .background(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                .cornerRadius(10)
                .opacity(descrition == "" ? 0 : 1)
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .offset(y: -60)
    }
}

struct PrevNavigationView: View {
    var body: some View {
        Image(systemName: "play.fill")
            .resizable()
            .frame(width: 38, height: 38)
            .scaledToFit()
            .rotationEffect(.radians(.pi))
            .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
    }
}

struct NextNavigationView: View {
    var body: some View {
        Image(systemName: "play.fill")
            .resizable()
            .frame(width: 38, height: 38)
            .scaledToFit()
            .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
    }
}


struct StepComponentView_Previews: PreviewProvider {
    static var previews: some View {
        StepComponentView(title: "Puncture", descrition: "Test", imageName: "Puncture_Step4")
.previewInterfaceOrientation(.landscapeRight)
    }
}
