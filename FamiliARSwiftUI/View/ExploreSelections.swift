//
//  ExploreSelections.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 26/10/21.
//

import Foundation
import SwiftUI

struct ExploreSelection: View {
    
    let itemTitle: String
    let itemImage: String
    
    init(title: String, image: String){
        self.itemTitle = title
        self.itemImage = image
    }
    
    var body: some View {
        NavigationLink(destination: ExploreSteps(explore: itemTitle)){
            Image(itemImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
        }
    }
}
struct ExploreSelection_Previews: PreviewProvider {
    static var previews: some View {
        ExploreSelection(title: "Puncture", image: "Puncture")
    }
}
