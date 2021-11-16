//
//  ExploreView.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 25/10/21.
//

import Foundation
import SwiftUI

struct ExploreView: View {
    
    let data = (1...6).map { "Item \($0)" }

    let columns = [
        GridItem(.adaptive(minimum: 190))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    ExploreSelection()
                }
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: 500)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
