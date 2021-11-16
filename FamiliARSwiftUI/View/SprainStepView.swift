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
                    StepComponentView(title: "Sprain", descrition: "Rest. Avoid activities that cause pain, swelling or discomfort.", imageName: "Sprain_Step1")
                    HStack(spacing: 120) {
                        PrevNavigationView().opacity(0)
                        Text("1/4")
                            .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                            .opacity(1)
                        NavigationLink(destination: SprainStep2View(), label: {
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

struct SprainStep2View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Sprain", descrition: "Use an ice pack immediately for 15 to 20 minutes and repeat every two to three hours while you're awake. If you have vascular disease, diabetes or decreased sensation, talk with your doctor before applying ice.", imageName: "Sprain_Step2")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("2/4")
                    .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                    .opacity(1)
                NavigationLink(destination: SprainStep3View(), label: {
                    NextNavigationView()
                }).opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SprainStep3View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Sprain", descrition: "To help stop the swelling, compress the ankle with an elastic bandage until the swelling stops. Don't hinder circulation by wrapping too tightly. Begin wrapping at the end farthest from your heart.", imageName: "Sprain_Step3")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("3/4")
                    .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                    .opacity(1)
                NavigationLink(destination: SprainStep4View(), label: {
                    NextNavigationView()
                }).opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SprainStep4View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Sprain", descrition: "To reduce swelling, elevate your ankle above the level of your heart, especially at night. Gravity helps reduce swelling by draining excess fluid.", imageName: "Sprain_Step4")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("4/4")
                    .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                    .opacity(1)
                NavigationLink(destination: Text("Finished"), label: {
                    NextNavigationView()
                }).opacity(0)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SprainStepView_Previews: PreviewProvider {
    static var previews: some View {
        SprainStepView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
