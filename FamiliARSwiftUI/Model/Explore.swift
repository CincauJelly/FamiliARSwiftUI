//
//  Explore.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 15/11/21.
//

import Foundation

struct Explore: Codable, Identifiable {
    let id: String
    let title: String
    let description: String
    
    var displayTitle: String {
        "\(title)"
    }
    
    var thumbnail: String {
        "\(description)"
    }
}
