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
    
    var body: some View {
        ZStack{
            Color("Color Secondary 2").ignoresSafeArea()
            VStack{
                Text("Explore First Aid")
                    .font(.system(size: 33))
                    .foregroundColor(Color("Color Primary"))
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(items, id: \.self) { items in
                        ExploreSelection(title: "\(items)", image: "\(items)")
                    }
                }
                    .padding(.horizontal)
                    .frame(maxWidth: 700, maxHeight: 500)

                
            }
            .frame(alignment: .top)
        }
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
.previewInterfaceOrientation(.landscapeRight)
    }
}
