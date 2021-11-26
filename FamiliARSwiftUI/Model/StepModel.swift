//
//  StepModel.swift
//  FamiliARSwiftUI
//
//  Created by Maritia Pangaribuan on 26/11/21.
//

import Foundation

struct StepModel: Codable, Identifiable{
    let id: Int
    let description: String
    let type: String

    var stepId: String {
        "\(id)"
    }

    var stepImage: String{
        "\(type)_Step\(id)"
    }

    var stepDescription: String{
        "\(description)"
    }
}
