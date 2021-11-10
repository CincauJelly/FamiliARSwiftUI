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

    let columns = [
        GridItem(.adaptive(minimum: 190))
    ]
    
    var body: some View {
        ZStack{
            Color("Color Secondary 2").ignoresSafeArea()
            VStack{
                Text("Explore First Aid")
                    .padding()
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(data, id: \.self) { item in
                            ExploreSelection(title: "Explore Pages \(item)", image: "Puncture")
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
