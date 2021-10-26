//
//  SubView.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 25/10/21.
//

import Foundation
import SwiftUI

struct SubView: View {
    var imageString: String
    var body: some View {
        Image(imageString)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipped()
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView(imageString: "placeholderImage")
    }
}
