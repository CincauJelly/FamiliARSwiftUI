//
//  StepView.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 08/11/21.
//

import SwiftUI

struct StepView: View {
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(red: 168/255, green: 34/255, blue: 61/255, alpha: 1)
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(red: 1, green: 246/255, blue: 243/255, alpha: 1)]
    }
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 255, green: 246, blue: 243, alpha: 1)).ignoresSafeArea()
            NavigationView {
                StepComponentView(descrition: "String", imageName: "Puncture_Step1")
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .accentColor(Color(red: 1, green: 246/255, blue: 243/255))
        }
        
    }
}

struct Step2View: View {
    var body: some View {
        StepComponentView(descrition: "String", imageName: "Puncture_Step1")
    }
}

struct StepView_Previews: PreviewProvider {
    static var previews: some View {
        StepView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
