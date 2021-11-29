//
//  Onboarding.swift
//  FamiliARSwiftUI
//
//  Created by Zafira Fedhila on 07/11/21.
//

import SwiftUI

struct Onboarding: View {
    // MARK: - <properties
    
    @AppStorage ("Onboarding") var onboardingActive : Bool?
   // @State private var isAnimating: Bool = false
   // @State var onboardingActive : Bool
    @State private var currentPage = 0
    // onboarding model
    @State var onboardingmodels: [OnboardingModel] = [
        OnboardingModel(id: "Welcome to FamiliAR", title: "Track Your Progress", description: "Keep Practicing How Far you active", iamge: "OnBoarding3", color: Color("Color Secondary"), offset: .zero),
        OnboardingModel(id: "Welcome to FamiliAR", title: "Explore First Aid", description: "Get to know how to handel basic first aid with step by step", iamge: "OnBoarding1", color: Color("Color  Secondary 2"), offset: .zero),
        OnboardingModel(id: "Welcome to FamiliAR", title: "Augmented Reality Support", description: "New experience for you, learning simulation basic first aid injuries at home with Augmented Reality Technology", iamge: "OnBoarding2", color: Color("Color Secondary"), offset: .zero),
        
    ]
    
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("Color2"), Color("Color Primary")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack{
            
        
            TabView{
                ForEach(onboardingmodels.indices.reversed(),id: \.self){index in
            // onboarding view
                    OnboardingView(onboarding: onboardingmodels [index], onboardingActive: onboardingActive)
                    
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .edgesIgnoringSafeArea(.all)
                
            Button(action:  {
                        onboardingActive = false
                    }) {
                        Text("Get Started")
                            .font(.system(size: 14, weight: .regular))
                            .padding()
                            .frame(maxWidth: 300 )
                            .foregroundColor(.white)
                            .background(Color("Color Secondary blue"))
                            .clipShape(Capsule())
                            .padding(.bottom, 60)
                    }
        }
        
                
            
    }.ignoresSafeArea()
            .frame (minWidth: 0,  maxWidth: .infinity, minHeight: 0 , maxHeight: .infinity, alignment: .center)
//    .onAppear{
//            withAnimation(.easeOut(duration: 0.5))  {
//            isAnimating = true
//                }
//            }
    }
}

@ViewBuilder
func OnboardingView(onboarding : OnboardingModel,onboardingActive: Bool!)-> some View {
    ZStack{
        LinearGradient(gradient: Gradient(colors: [Color("Color2"), Color("Color Primary")]), startPoint: .leading, endPoint: .trailing)

        onboarding.color
        
        VStack (spacing : 0){
            
            HStack  {
                Text(onboarding.id)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Color Secondary 2"))
                    //.frame(width: getRect().width - 100)
//                Spacer()
//
//                Button (action: {} , label: {
//                    Text("Skip")
//
//                        //.padding(16)
//                        .font(.system(size: 14))
//                        .foregroundColor(.white)
//                        .font(.title)
//                        .fontWeight(.semibold)
//                        .kerning(1.2)
//
//                        //.padding(EdgeInsets(top: 0, leading: 0, bottom : 0, trailing: 16))
//                        //.frame(width: getRect().width - 100)
//
//                            })
                }
            
            //Image("OnBoarding2")
        Image(onboarding.iamge)
                .resizable()
                .aspectRatio(contentMode: .fit )
                .frame(width: 400, height: 400 )
                .padding(10)
                .shadow(color: Color (red:0, green: 0, blue: 0, opacity: 0.15), radius: 25, x: 20, y:25)
               //.scaleEffect(isAnimating ? 1.0 : 0.6)
            
            
                        Text(onboarding.title)
                            //.font(.system(size: 24))
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color("Color Secondary 2"))
                            //.frame(width: getRect().width - 100)
                            .shadow(color: Color (red:0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
            
                        Text(onboarding.description)
                            //.font(.system(size: 20))
                            .font(.subheadline)
                            .font(.system(size: 24, weight: .regular))
                            .padding(.top, 16)
                            .multilineTextAlignment(.center)
                           // .frame(width: getRect().width - 100)
                            .lineSpacing(8)
                            .foregroundColor(Color("Color Secondary 2"))
            
                           
            
            
//            VStack (alignment: .leading, spacing: 0) {
//    //            Text(onboarding.id)
//    //                .font(.system(size: 38))
//    //                .fontWeight(.heavy)
//    //                .foregroundColor(Color("Color Primary"))
//                Text(onboarding.title)
//                    //.font(.system(size: 24))
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                    .foregroundColor(Color("Color Primary"))
//                    .frame(width: getRect().width - 100)
//                Text(onboarding.description)
//                    //.font(.system(size: 20))
//                    .font(.subheadline)
//                    .fontWeight (.regular)
//                    .padding(.top)
//                    .frame(width: getRect().width - 100)
//                    .lineSpacing(8)
//                    .foregroundColor(Color("Color Primary"))
//            }
//            .foregroundColor(.white)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.leading, 20)
//            .padding([.trailing, .top])
//            Button(action:  {
//             print("heloo")
//            }) {
//                Text("Get Started")
//                    .font(.system(size: 14, weight: .regular))
//                    .padding()
//                    .frame(maxWidth: 300 )
//                    .foregroundColor(.white)
//                    .background(Color("Color Secondary blue"))
//                    .clipShape(Capsule())
//                    .padding(.top, 40)
//            }
            
            
           
        }
    }
    
    .ignoresSafeArea()
    .frame (minWidth: 0,  maxWidth: .infinity, minHeight: 0 , maxHeight: .infinity, alignment: .center)
    
    }


extension View {
    func getRect() -> CGRect{
        return UIScreen.main.bounds
    }
    
//    func switchOnboarding(){
//        @AppStorage ("Onboarding") var onboardingActive : Bool?
//        onboardingActive = false
        
    }
    



struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Onboarding()
                .previewInterfaceOrientation(.landscapeLeft)
            Onboarding()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
