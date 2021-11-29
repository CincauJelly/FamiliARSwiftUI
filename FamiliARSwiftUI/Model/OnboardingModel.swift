//
//  OnboardingModel.swift
//  FamiliARSwiftUI
//
//  Created by Zafira Fedhila on 07/11/21.
//

import SwiftUI

//Onboarding model and sample screens
struct OnboardingModel : Identifiable{
    var id = UUID().uuidString
    var title: String
    var description: String
    var iamge : String
    var color : Color
    var offset: CGSize = .zero
    
}
