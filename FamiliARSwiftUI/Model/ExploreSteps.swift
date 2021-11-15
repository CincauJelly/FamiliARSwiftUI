//
//  ExploreSteps.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 11/11/21.
//

import Foundation

struct ExploreSteps: Codable, Identifiable {
    struct Steps: Codable {
        let id: Int
        let image: String
        let description: String
    }
    let id: Int
    let title: String
    let step: [Steps]
    
    var displayTitle: String
    {
        "Explore \(id)"
    }
}
