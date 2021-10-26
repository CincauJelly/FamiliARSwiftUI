//
//  ExploreViewModel.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 25/10/21.
//

import Foundation
import SwiftUI

public class ExploreViewModel {
    private let explore: ExploreModel
    
    public init(explore: ExploreModel) {
        self.explore = explore
    }
    
    public var title: String {
        return explore.title
    }
    public var image: Image {
        return explore.image
    }
    
    
}
