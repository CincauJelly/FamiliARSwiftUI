//
//  SprainStepView.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 11/11/21.
//
import SwiftUI

struct SprainStepView: View {
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(red: 168/255, green: 34/255, blue: 61/255, alpha: 1)
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(red: 1, green: 246/255, blue: 243/255, alpha: 1)]
        
    }
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 255, green: 246, blue: 243, alpha: 1)).ignoresSafeArea()
            NavigationView {
                VStack{
                    StepComponentView(descrition: "Wash your hands. This helps prevent infection.", imageName: "Puncture_Step1")
                    HStack(spacing: 120) {
                        PrevNavigationView().opacity(0)
                        Text("1/6")
                            .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                            .opacity(1)
                        NavigationLink(destination: Text("Next"), label: {
                            NextNavigationView()
                        })
                            .opacity(1)
                    }
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .accentColor(Color(red: 1, green: 246/255, blue: 243/255))
        }
        
    }
}

struct SprainStepView_Previews: PreviewProvider {
    static var previews: some View {
        PunctureStepView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
