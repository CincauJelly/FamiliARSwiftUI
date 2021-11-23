//
//  NoseBleedStepView.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 15/11/21.
//

import SwiftUI

struct NoseBleedStepView: View {
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(Color("Color Primary"))
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color("Color Secondary 2"))]
    }
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack {
            Color("Color Secondary 2").ignoresSafeArea()
            NavigationView {
                VStack{
                    StepComponentView(title: "Nose Bleed", descrition: "Sit down and firmly pinch the soft lower part of your nose, just above your nostrils, for at least 10-15 minutes.", imageName: "Nosebleed_Step1")
                    HStack(spacing: 120) {
                        PrevNavigationView().opacity(0)
                        Text("1/4")
                            .foregroundColor(Color("Color Primary"))
                            .opacity(1)
                        NavigationLink(destination: NoseBleedStep2View(), label: {
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

struct NoseBleedStep2View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Nose Bleed", descrition: "Lean forward and breathe through your mouth – this will drain blood into your nose instead of down the back of your throat.", imageName: "Nosebleed_Step2")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("2/4")
                    .foregroundColor(Color("Color Primary"))
                    .opacity(1)
                NavigationLink(destination: NoseBleedStep3View(), label: {
                    NextNavigationView()
                }).opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct NoseBleedStep3View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Nose Bleed", descrition: "Place an ice pack covered by a towel on the bridge of your nose.", imageName: "Nosebleed_Step3")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("3/4")
                    .foregroundColor(Color("Color Primary"))
                    .opacity(1)
                NavigationLink(destination: NoseBleedStep4View(), label: {
                    NextNavigationView()
                }).opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct NoseBleedStep4View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Nose Bleed", descrition: "Stay upright, rather than lying down, as this reduces the blood pressure in the blood vessels of your nose and will discourage further bleeding.", imageName: "Nosebleed_Step4")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("4/4")
                    .foregroundColor(Color("Color Primary"))
                    .opacity(1)
                NavigationLink(destination: Text("Finished"), label: {
                    NextNavigationView()
                }).opacity(0)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct NoseBleedStepView_Previews: PreviewProvider {
    static var previews: some View {
        NoseBleedStepView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
