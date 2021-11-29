//
//  ExploreSelections.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 26/10/21.
//

import Foundation
import SwiftUI

struct ExploreSelection: View {
    
    let itemTitle: String
    let itemImage: String
    
    init(title: String, image: String){
        self.itemTitle = title
        self.itemImage = image
    }
    
    var body: some View {
        switch itemTitle {
        case "Puncture":
            NavigationLink(destination: ExploreStepView(step: "Puncture") ){
                Image(itemImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        case "Sprain":
            NavigationLink(destination: ExploreStepView(step: "Sprain")){
                Image(itemImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        case "Asthma":
            NavigationLink(destination: ExploreStepView(step: "Asthma")){
                Image(itemImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        case "NoseBleed":
            NavigationLink(destination: ExploreStepView(step: "Nose Bleed")){
                Image(itemImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        case "Choking":
            NavigationLink(destination: ExploreStepView(step: "Choking")){
                Image(itemImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        case "BeeStings":
            NavigationLink(destination: ExploreStepView(step: "Bee and Stings")){
                Image(itemImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        default:
            NavigationLink(destination: StepComponentView(title: itemTitle, imageName: itemImage)){
                Image(itemImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        }
    }
}
struct ExploreSelection_Previews: PreviewProvider {
    static var previews: some View {
        ExploreSelection(title: "Puncture", image: "Puncture")
    }
}
