//
//  MainNavigationView.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 24/11/21.
//

import SwiftUI

struct MainNavigationView: View {
    var page: String
    //    @Binding var show: Bool
    var show: Bool
    
    var body: some View {
        
        ZStack {
            if show {
                Color.black.opacity(show ? 0.7 : 0).edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Spacer()
                        Button(action: {
                            withAnimation(.linear(duration: 0.3)) {
                                //                            show = false
                            }
                        }, label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("Color Primary"))
                        })
                        
                    }
                    HStack {
                        Image("App Logo")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .aspectRatio(contentMode: .fit)
                        Text("FamilyAR")
                            .foregroundColor(Color("Color Primary"))
                            .padding(.horizontal, 10)
                            .font(.system(size: 17, weight: .heavy, design: .default))
                    }.padding(.bottom, 20)
                    
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
                .frame(width: 800)
                .padding(30)
                .background(Color("Color Secondary 2"))
            }
        }
        .edgesIgnoringSafeArea([.top, .bottom])
        
    }
}

struct MainNavigationView_Previews: PreviewProvider {
    //    @Binding private var showPopUp: Bool = projectedValue
    static var previews: some View {
        MainNavigationView(page: "Practice", show: true)
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
                .frame(width: 80, height: 80, alignment: .center)
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
