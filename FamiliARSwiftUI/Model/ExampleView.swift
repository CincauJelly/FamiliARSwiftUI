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
    
    let puncture: [StepModel] = Bundle.main.decode("Puncture.json")
    @State var tabPage: String = "1"
    
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
            
            VStack {
                TabView (selection: $tabPage){
                    ForEach(puncture){step in
                        VStack{
                            Image(step.stepImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            Text(step.stepDescription)
                        }.tag(step.stepId)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                HStack{
                    Button{
                        print("prev")
                        if Int(self.tabPage)! > 1 {
                            self.tabPage = "\(Int(self.tabPage)! - 1)"
                        } else {
                            print("beginning of step")
                        }
                    } label: {
                        Image(systemName: "arrowtriangle.backward.fill")
                    }
                    Text("\(tabPage) / \(puncture.count)")
                    Button{
                        print("next")
                        if Int(self.tabPage)! < puncture.count {
                            self.tabPage = "\(Int(self.tabPage)! + 1)"
                        } else {
                            print("end of step")
                        }
                    } label: {
                        Image(systemName: "arrowtriangle.right.fill")
                    }
                }
            }
        }
    }
}

struct ExampleView_Previews: PreviewProvider{
    static var previews: some View{
        ExampleView()
    }
}
