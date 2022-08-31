//
//  TestPopup.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 25/11/21.
//

import Foundation
import SwiftUI
struct ExploreStepView: View{
    
    let stepPage: String
    @State var tabPage: String = "1"
    var simulationSteps: [StepModel]
    let stepSource: String
    
    init(step: String){
        self.stepPage = step
        switch stepPage {
        case "Puncture":
            self.simulationSteps = Bundle.main.decode("Puncture.json")
            self.stepSource = "https://www.mayoclinic.org/first-aid/first-aid-puncture-wounds/basics/art-20056665"
        case "Choking":
            self.simulationSteps = Bundle.main.decode("Choking.json")
            self.stepSource = "https://www.mayoclinic.org/first-aid/first-aid-choking/basics/art-20056637"
        case "Nose Bleed":
            self.simulationSteps = Bundle.main.decode("NoseBleed.json")
            self.stepSource = "https://www.mayoclinic.org/first-aid/first-aid-nosebleeds/basics/art-20056683"
        case "Asthma":
            self.simulationSteps = Bundle.main.decode("Asthma.json")
            self.stepSource = "https://www.betterhealth.vic.gov.au/health/conditionsandtreatments/asthma-emergency-first-aid"
        case "Bee and Stings":
            self.simulationSteps = Bundle.main.decode("BeeAndStings.json")
            self.stepSource = "https://www.aad.org/public/everyday-care/injured-skin/bites/treat-bee-sting"
        case "Sprain":
            self.simulationSteps = Bundle.main.decode("Sprain.json")
            self.stepSource = "https://www.mayoclinic.org/diseases-conditions/sprained-ankle/diagnosis-treatment/drc-20353231"
        default:
            self.simulationSteps = Bundle.main.decode("Puncture.json")
            self.stepSource = ""
        }
    }
    
    var body: some View{
        ZStack {
            VStack {
                PageTitleView(pageTitle: "\(stepPage)")
                Spacer()
            }
            VStack{
                TabView (selection: $tabPage){
                    ForEach(simulationSteps){step in
                        InnerStepView(descrition: step.stepDescription, imageName: step.stepImage)
                            .tag(step.stepId)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                
                HStack(spacing: 120) {
                    // panah kiri
                    Button{
                        if Int(self.tabPage)! > 1 {
                            self.tabPage = "\(Int(self.tabPage)! - 1)"
                            print("prev")
                            
                        } else {
                            print("beginning of step")
                        }
                    } label: {
                        PrevNavigationView()
                            .opacity(Int(self.tabPage)! > 1 ? 1 : 0)
                    }
                    // page indicator
                    Text("\(tabPage) / \(simulationSteps.count)")
                        .foregroundColor(Color("Color Primary"))
                    // panah kanan
                    Button{
                        if Int(self.tabPage)! < simulationSteps.count {
                            self.tabPage = "\(Int(self.tabPage)! + 1)"
                            print("next")
                        } else {
                            print("end of step")
                        }
                    } label: {
                        NextNavigationView()
                            .opacity(Int(self.tabPage)! < simulationSteps.count ? 1 : 0)
                    }
                }.padding(.bottom)
                Text("Source : \(self.stepSource)")
                    .italic()
                    .padding(.bottom)
            }
            VStack {
                HStack {
                    NavigationLink(destination: ExploreView(), label: {
                        Image("explore-nav")
                            .resizable()
                            .frame(width: 80, height: 65)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("Color Primary"))
                            .padding(50)
                    })
                    Spacer()
                }
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

struct ExploreStepView_Previews: PreviewProvider{
    static var previews: some View{
        ExploreStepView(step: "Bee and Stings")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
