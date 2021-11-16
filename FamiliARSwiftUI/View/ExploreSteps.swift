//
//  ExploreSteps.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 10/11/21.
//

import Foundation
import SwiftUI

struct ExploreSteps: View{
    let explore: String
    
    init(explore: String){
        self.explore = explore
    }
    
    var body: some View{
        Text(explore)
    }
}

struct ExploreSteps_Previews: PreviewProvider{
    static var previews: some View{
        ExploreSteps(explore: "explore page")
    }
}
