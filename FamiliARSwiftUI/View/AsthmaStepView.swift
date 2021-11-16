//
//  AsthmaStepView.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 15/11/21.
//

import SwiftUI

struct AstmaStepView: View {
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
                    StepComponentView(title: "Asthma", descrition: "Sit upright. Stop whatever you are doing and sit upright. Bending over or lying down can constrict your breathing even more.", imageName: "Asthma_Step1")
                    HStack(spacing: 120) {
                        PrevNavigationView().opacity(0)
                        Text("1/6")
                            .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                            .opacity(1)
                        NavigationLink(destination: AstmaStep2View(), label: {
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

struct AstmaStep2View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Asthma", descrition: "Take long, deep breaths. This helps to slow down your breathing and prevent hyperventilation. Breathe in through your nose and breathe out through your mouth.", imageName: "Asthma_Step2")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("2/6")
                    .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                    .opacity(1)
                NavigationLink(destination: AstmaStep3View(), label: {
                    NextNavigationView()
                })
                    .opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct AstmaStep3View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Asthma", descrition: "Shake the inhaler 10 to 15 times before each use. Breathe out all the way. Try to push out as much air as you can. As you start to slowly breathe in through your mouth, press down on the inhaler one time. Keep breathing in slowly, as deeply as you can. Hold your breath as you slowly count to 10. This lets the medicine reach deep into your lungs.", imageName: "Asthma_Step3")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("3/6")
                    .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                    .opacity(1)
                NavigationLink(destination: AstmaStep4View(), label: {
                    NextNavigationView()
                })
                    .opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct AstmaStep4View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Asthma", descrition: "Stay calm. Staying calm may prevent further tightening of your chest muscles and make your breathing easier. The asthma attack could be triggered by dust, cigarette smoke or the smell of chemicals. Get away from the trigger as soon as possible and go to an air-conditioned environment or any place with clean air.", imageName: "Asthma_Step4")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("4/6")
                    .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                    .opacity(1)
                NavigationLink(destination: AstmaStep5View(), label: {
                    NextNavigationView()
                })
                    .opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct AstmaStep5View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Asthma", descrition: "Take a hot caffeinated beverage. Hot caffeinated drinks like coffee can help to open up the airways slightly, providing some relief for an hour or two.", imageName: "Asthma_Step5")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("4/6")
                    .foregroundColor(Color(red: 168 / 255, green: 34 / 255, blue: 61 / 255))
                    .opacity(1)
                NavigationLink(destination: AstmaStep6View(), label: {
                    NextNavigationView()
                })
                    .opacity(1)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct AstmaStep6View: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            StepComponentView(title: "Asthma", descrition: "Seek emergency medical help. If the wheezing, coughing and breathing difficulty do not subside after a period of rest, seek immediate medical attention.", imageName: "Asthma_Step6")
            HStack(spacing: 120) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    PrevNavigationView()
                })
                Text("6/6")
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

struct AstmaStepView_Previews: PreviewProvider {
    static var previews: some View {
        AstmaStepView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
