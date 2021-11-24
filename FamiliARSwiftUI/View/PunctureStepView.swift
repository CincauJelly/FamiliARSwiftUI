//
//  StepView.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 08/11/21.
//

import SwiftUI

struct PunctureStepView: View {
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
                    StepComponentView(title: "Puncture", descrition: "Wash your hands. This helps prevent infection.", imageName: "Puncture_Step1")
                    HStack(spacing: 120) {
                        PrevNavigationView().opacity(0)
                        Text("1/6")
                            .foregroundColor(Color("Color Primary"))
                            .opacity(1)
                        NavigationLink(destination: Step2View(), label: {
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

struct Step2View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Puncture", descrition: "Stop the bleeding. Apply gentle pressure with a clean bandage or cloth", imageName: "Puncture_Step2")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("2/6")
                    .foregroundColor(Color("Color Primary"))
                    .opacity(1)
                NavigationLink(destination: Step3View(), label: {
                    NextNavigationView()
                })
                    .opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Step3View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Puncture", descrition: "Rinse the wound with clear water for 5 to 10 minutes. If dirt or debris remains in the wound, use a washcloth to gently scrub it off. See a doctor if you can't remove all of the dirt or debris.", imageName: "Puncture_Step3")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("3/6")
                    .foregroundColor(Color("Color Primary"))
                    .opacity(1)
                NavigationLink(destination: Step4View(), label: {
                    NextNavigationView()
                })
                    .opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Step4View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Puncture", descrition: "Apply a thin layer of an antibiotic cream. Rewash the area and reapply the antibiotic when you change the dressing. If there is an allergic reaction, stop using the product.", imageName: "Puncture_Step4")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("4/6")
                    .foregroundColor(Color("Color Primary"))
                    .opacity(1)
                NavigationLink(destination: Step5View(), label: {
                    NextNavigationView()
                })
                    .opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Step5View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Puncture", descrition: "Cover the wound. Bandages help keep the wound clean.", imageName: "Puncture_Step5")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("4/6")
                    .foregroundColor(Color("Color Primary"))
                    .opacity(1)
                NavigationLink(destination: Step6View(), label: {
                    NextNavigationView()
                })
                    .opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Step6View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Puncture", descrition: "Change the dressing. Do this daily or whenever the bandage becomes wet or dirty.", imageName: "Puncture_Step6")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("6/6")
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

struct StepView_Previews: PreviewProvider {
    static var previews: some View {
        PunctureStepView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
