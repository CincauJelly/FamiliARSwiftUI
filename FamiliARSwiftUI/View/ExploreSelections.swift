//
//  ExploreSelections.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 26/10/21.
//

import Foundation
import SwiftUI

struct ExploreSelection: View {
    var body: some View {
        ZStack{
            Image("placeholderImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.2)
                .frame(width: 150, height: 150, alignment: .center)
                .padding()
            Text("Explore Page")
                .foregroundColor(.white)
                .padding()
        }
        .background(Color(.red))
        .frame(width: 190, height: 190, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
struct ExploreSelection_Previews: PreviewProvider {
    static var previews: some View {
        ExploreSelection()
    }
}
