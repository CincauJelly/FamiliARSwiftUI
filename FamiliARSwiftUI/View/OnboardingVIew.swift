//
//  OnboardingVIew.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 25/10/21.
//

import Foundation
import SwiftUI

struct OnboardingView: View {
    var subviews = [
        UIHostingController(rootView: SubView(imageString: "placeholderImage")),
        UIHostingController(rootView: SubView(imageString: "placeholderImage")),
        UIHostingController(rootView: SubView(imageString: "placeholderImage"))
    ]
    
    var body: some View {
        //
    }
}
