//
//  StepComponentView.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 09/11/21.
//

import SwiftUI

struct StepComponentView: View {
    var title: String
    var descrition = ""
    var imageName: String
    var step = ""
    
    var body: some View {
        ZStack {
            VStack {
                Text("\(title)")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(Color("Color Secondary 2"))
                    .background(Color("Color Primary"))
                    .ignoresSafeArea()
                HStack {
                    NavigationLink(destination: ExploreStepView(step: "Puncture"), label: {
                        Image("explore-nav")
                            .resizable()
                            .frame(width: 80, height: 65)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("Color Primary"))
                            .padding(100)
                    })
                    Spacer()
                }
                Spacer()
            }
            InnerStepView(descrition: descrition, imageName: imageName)
            
        }        
    }
}

struct PrevNavigationView: View {
    var body: some View {
        Image(systemName: "play.fill")
            .resizable()
            .frame(width: 38, height: 38)
            .scaledToFit()
            .rotationEffect(.radians(.pi))
            .foregroundColor(Color("Color Primary"))
    }
}

struct NextNavigationView: View {
    var body: some View {
        Image(systemName: "play.fill")
            .resizable()
            .frame(width: 38, height: 38)
            .scaledToFit()
            .foregroundColor(Color("Color Primary"))
    }
}

struct PageTitleView: View {
    var pageTitle: String
    var body: some View {
        Text(pageTitle)
            .frame(maxWidth: .infinity)
            .padding()
            .font(.system(size: 17, weight: .semibold))
            .foregroundColor(Color("Color Secondary 2"))
            .background(Color("Color Primary"))
            .ignoresSafeArea()
    }
}


struct StepComponentView_Previews: PreviewProvider {
    static var previews: some View {
        StepComponentView(title: "Puncture", descrition: "Test", imageName: "Puncture_Step4")
            .previewInterfaceOrientation(.landscapeRight)
    }
}

struct InnerStepView: View {
    var descrition = ""
    var imageName: String
    
    var body: some View {
        VStack{
            Image("\(imageName)")
                .resizable()
                .scaledToFit()
                .frame(width: 930.0, height: 300.0)
                .padding(.bottom, 40)
            Text("\(descrition)")
                .frame(width: 800)
                .padding()
                .foregroundColor(Color("Color Secondary 2"))
                .background(Color("Color Primary"))
                .cornerRadius(10)
                .opacity(descrition == "" ? 0 : 1)
        }
    }
}
