//
//  ChokingStepView.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 15/11/21.
//

import SwiftUI

struct ChokingStepView: View {
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
                    StepComponentView(title: "Choking", descrition: "Stand behind the person. Place one foot slightly in front of the other for balance. Wrap your arms around the waist. Tip the person forward slightly. If a child is choking, kneel down behind the child.", imageName: "Choking_Step1")
                    HStack(spacing: 120) {
                        PrevNavigationView().opacity(0)
                        Text("1/4")
                            .foregroundColor(Color("Color Primary"))
                            .opacity(1)
                        NavigationLink(destination: ChokingStep2View(), label: {
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

struct ChokingStep2View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Choking", descrition: "Make a fist with one hand. Position it slightly above the person's navel.", imageName: "Choking_Step2")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("2/4")
                    .foregroundColor(Color("Color Primary"))
                    .opacity(1)
                NavigationLink(destination: ChokingStep3View(), label: {
                    NextNavigationView()
                }).opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ChokingStep3View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Choking", descrition: "Grasp the fist with the other hand. Press hard into the abdomen with a quick, upward thrust — as if trying to lift the person up.", imageName: "Choking_Step3")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("3/4")
                    .foregroundColor(Color("Color Primary"))
                    .opacity(1)
                NavigationLink(destination: ChokingStep4View(), label: {
                    NextNavigationView()
                }).opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ChokingStep4View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Choking", descrition: "Perform between six and 10 abdominal thrusts until the blockage is dislodged.", imageName: "Choking_Step4")
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

struct ChokingStepView_Previews: PreviewProvider {
    static var previews: some View {
        ChokingStepView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
