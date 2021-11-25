//
//  StepModel.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 24/11/21.
//

import Foundation

struct StepModel: Codable, Identifiable{
    let id: Int
    let description: String
    
    var stepId: String {
        "\(id)"
    }
    
    var stepImage: String{
        "Puncture_Step\(id)"
    }
    
    var stepDescription: String{
        "\(description)"
    }
}
