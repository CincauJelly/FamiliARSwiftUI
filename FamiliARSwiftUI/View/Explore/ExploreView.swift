//
//  ExploreView.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 25/10/21.
//

import Foundation
import SwiftUI
import RealityKit

struct ExploreView: View {
    
    //    let exploreItems: [ExploreItems] = Bundle.main.decode("ExploreItems.json")
    //    let exploreSteps: [ExploreSteps] = Bundle.main.decode("ExploreSteps.json")
    
    let items = ["Puncture","Sprain","Asthma","NoseBleed","Choking","BeeStings"]
    
    let columns = [
        GridItem(.adaptive(minimum: 190))
    ]
    @State private var showPopUp: Bool = false
    
    var body: some View {
        
        ZStack{
            Color("Color Secondary 2").ignoresSafeArea()
            HStack {
                VStack {
                    Button(action: {
                        withAnimation(.linear(duration: 0.3)) {
                            showPopUp.toggle()
                        }
                    }, label: {
                        Image("menu")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("Color Primary"))
                            .padding(20)
                    })
                    Spacer()
                }
                
                Spacer()
            }
            VStack{
                Text("Explore First Aid")
                    .foregroundColor(Color("Color Primary"))
                    .font(.system(size:24, weight:.bold, design: .default))
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(items, id: \.self) { items in
                        ExploreSelection(title: "\(items)", image: "\(items)")
                    }
                }
                .padding(.horizontal)
                .frame(maxWidth: 700, maxHeight: 500)
                
                
            }
            .frame(alignment: .top)
            .navigationBarBackButtonHidden(true)
            MainNavigationView(page: .explore, show: $showPopUp)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
