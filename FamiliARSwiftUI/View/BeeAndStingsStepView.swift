//
//  BeeAndStingsStepView.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 15/11/21.
//

import SwiftUI

struct BeeAndStingsStepView: View {
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(Color("Color Primary"))
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color("Color Secondary 2"))]
    }
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack {
            Color("Color Primary").ignoresSafeArea()
            NavigationView {
                VStack{
                    StepComponentView(title: "Choking", descrition: "Stay calm. Although most bees usually only sting once, wasps and hornets can sting again. If you are stung, calmly walk away from the area to avoid additional attacks.", imageName: "BeeStings_Step1")
                    HStack(spacing: 120) {
                        PrevNavigationView().opacity(0)
                        Text("1/5")
                            .foregroundColor(Color("Color Primary"))
                            .opacity(1)
                        NavigationLink(destination: BeeAndStingsStep2View(), label: {
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

struct BeeAndStingsStep2View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Choking", descrition: "Remove the stinger. If the stinger remains in your skin, remove it by scraping over it with your fingernail or a piece of gauze. Never use tweezers to remove a stinger, as squeezing it can cause more venom to release into your skin.", imageName: "BeeStings_Step2")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("2/5")
                    .foregroundColor(Color("Color Primary"))
                    .opacity(1)
                NavigationLink(destination: BeeAndStingsStep3View(), label: {
                    NextNavigationView()
                }).opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct BeeAndStingsStep3View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Choking", descrition: "Wash the sting with soap and water.", imageName: "BeeStings_Step3")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("3/5")
                    .foregroundColor(Color("Color Primary"))
                    .opacity(1)
                NavigationLink(destination: BeeAndStingsStep4View(), label: {
                    NextNavigationView()
                }).opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct BeeAndStingsStep4View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Choking", descrition: "Apply a cold pack to reduce swelling. However, if the swelling moves to other parts of your body, such as your face or neck, go to the emergency room immediately, as you might be having an allergic reaction. Other signs of an allergic reaction include difficulty breathing, nausea, hives, or dizziness.", imageName: "BeeStings_Step3")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("4/5")
                    .foregroundColor(Color("Color Primary"))
                    .opacity(1)
                NavigationLink(destination: BeeAndStingsStep5View(), label: {
                    NextNavigationView()
                }).opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct BeeAndStingsStep5View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Choking", descrition: "Consider taking over-the-counter pain medication. Bee, wasp, and hornet stings are painful. Painkillers like acetaminophen or ibuprofen can help relieve the pain. Always follow the directions on the label and use the correct dose.", imageName: "BeeStings_Step4")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("5/5")
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

struct BeeAndStingsStepView_Previews: PreviewProvider {
    static var previews: some View {
        BeeAndStingsStepView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
