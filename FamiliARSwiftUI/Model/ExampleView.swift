//
//  ExampleView.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 15/11/21.
//

import Foundation
import SwiftUI

struct ExampleView: View{
    let items: [String:Explore] = Bundle.main.decode("Items.json")
    let steps: [Step] = Bundle.main.decode("Steps.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))]
    
    var body: some View{
        VStack{
            Text("\(items.count)")
            Text("\(steps.count)")
            
            ScrollView {
                LazyVGrid(columns: columns){
                    ForEach(steps) {step in
                        NavigationLink {
                            Text("Detail View")
                        } label: {
                            VStack {
                                Image(step.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                
                                VStack{
                                    Text(step.displayName)
                                        .font(.headline)
                                }
                                .frame(maxWidth: .infinity)
                            }
                        }
                    }
                }
            }
            
            TabView {
                ForEach(steps){step in
                    VStack{
                        Text(step.stepDetail)
                        
                    }
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}

struct ExampleView_Previews: PreviewProvider{
    static var previews: some View{
        ExampleView()
    }
}
