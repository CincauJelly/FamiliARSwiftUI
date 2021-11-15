//
//  Step.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 15/11/21.
//

import Foundation

struct Step: Codable, Identifiable {
    struct Detail: Codable {
        let step: String
        let description: String
    }
    
    let id: Int
    let steps: [Detail]
    let category: String
    
    var displayName: String {
        "Category \(id)"
    }
    
    var image: String {
        "\(category)"
    }
    
    var stepDetail: String {
        "\(steps.description)"
    }
}
