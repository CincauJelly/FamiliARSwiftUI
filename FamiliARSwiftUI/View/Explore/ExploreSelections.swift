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
            NavigationLink(destination: PunctureStepView()){
                Image(itemImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        case "Sprain":
            NavigationLink(destination: SprainStepView()){
                Image(itemImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        case "Asthma":
            NavigationLink(destination: AstmaStepView()){
                Image(itemImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        case "NoseBleed":
            NavigationLink(destination: NoseBleedStepView()){
                Image(itemImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        case "Choking":
            NavigationLink(destination: ChokingStepView()){
                Image(itemImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        case "BeeStings":
            NavigationLink(destination: BeeAndStingsStepView()){
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
