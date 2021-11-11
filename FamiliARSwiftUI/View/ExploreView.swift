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
    let data = (1...6).map { "Item \($0)" }
    let items = ["Puncture","Sprain","Asthma","NoseBleed","Choking","BeeStings"]

    let columns = [
        GridItem(.adaptive(minimum: 190))
    ]
    
    var body: some View {
        ZStack{
            Color("Color Secondary 2").ignoresSafeArea()
            VStack{
                Text("Explore First Aid")
                    .font(.custom("Product Sans Regular", size: 33))
                    .foregroundColor(<#T##color: Color?##Color?#>)
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(items, id: \.self) { item in
                        ExploreSelection(title: "\(item)", image: "\(item)")
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
