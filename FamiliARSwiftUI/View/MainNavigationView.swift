//
//  MainNavigationView.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 24/11/21.
//

import SwiftUI

struct MainNavigationView: View {
    var page: String
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image("App Logo")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .aspectRatio(contentMode: .fit)
                    Text("FamilyAR")
                        .foregroundColor(Color("Color Primary"))
                        .padding(.horizontal, 10)
                        .font(.system(size: 17, weight: .heavy, design: .default))
                }.padding(30)
                NavigationLink(destination: SimulationView()){
                    OptionView(isActive: page == "Learning Simulation", optionTitle: "Learning Simulation", imageName: "Select Learning", activeImageName: "Unselect Learning")
                }
                NavigationLink(destination: ExploreView()){
                    OptionView(isActive: page == "Explore First Aid", optionTitle: "Explore First Aid", imageName: "explore first aid select", activeImageName: "ExploreUnselected")
                }
                NavigationLink(destination: PracticeView()){
                    OptionView(isActive: page == "Practice", optionTitle: "Practice", imageName: "practice select", activeImageName: "PracticeUnselected")
                }
                
                
                
            }
        }
        .padding(30)
        .background(Color("Color Secondary 2"))
    }
}

struct MainNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigationView(page: "Explore First Aid")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

struct OptionView: View {
    var isActive: Bool
    var optionTitle: String
    var imageName: String
    var activeImageName: String
    var body: some View {
        HStack {
            Image(isActive ? activeImageName : imageName )
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80, alignment: .trailing)
                .padding(.leading, 68)
            
            Text("\(optionTitle)")
                .font(.system(size: 30, weight: .semibold, design: .default))
                .padding(.leading, 20)
            Spacer()
        }.frame(width: 761)
            .padding(15)
            .foregroundColor(isActive ? Color("Color Secondary 2") : Color("Color Primary"))
            .background(isActive ? Color("Color Primary") : Color("Color Secondary 2"))
            .cornerRadius(10)
    }
}
