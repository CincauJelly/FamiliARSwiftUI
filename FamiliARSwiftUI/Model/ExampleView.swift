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
    
    let puncture: [StepModel] = Bundle.main.decode("Puncture.json") // ambil data puncture
    @State var tabPage: String = "1"
    
    let columns = [
        GridItem(.adaptive(minimum: 150))]
    
    var body: some View{
        VStack{
//            Text("\(items.count)")
//            Text("\(steps.count)")
//
//            ScrollView {
//                LazyVGrid(columns: columns){
//                    ForEach(steps) {step in
//                        NavigationLink {
//                            Text("Detail View")
//                        } label: {
//                            VStack {
//                                Image(step.image)
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 100, height: 100)
//
//                                VStack{
//                                    Text(step.displayName)
//                                        .font(.headline)
//                                }
//                                .frame(maxWidth: .infinity)
//                            }
//                        }
//                    }
//                }
//            }
            
            VStack {
                TabView (selection: $tabPage){
                    ForEach(puncture){step in
                        VStack{
                            // gambar step
                            Image(step.stepImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            // deskripsi step
                            Text(step.stepDescription)
                        }.tag(step.stepId)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                HStack{
                    // panah kiri
                    Button{
                        if Int(self.tabPage)! > 1 {
                            self.tabPage = "\(Int(self.tabPage)! - 1)"
                            print("prev")

                        } else {
                            print("beginning of step")
                        }
                    } label: {
                        if Int(self.tabPage)! > 1 {
                            Image(systemName: "arrowtriangle.backward.fill")
                        } else {
                        Image(systemName: "arrowtriangle.backward")
                        }
                    }
                    // page indicator
                    Text("\(tabPage) / \(puncture.count)")
                    // panah kanan
                    Button{
                        if Int(self.tabPage)! < puncture.count {
                            self.tabPage = "\(Int(self.tabPage)! + 1)"
                            print("next")

                        } else {
                            print("end of step")
                        }
                    } label: {
                        if Int(self.tabPage)! < puncture.count {
                        Image(systemName: "arrowtriangle.right.fill")
                        } else {
                            Image(systemName: "arrowtriangle.right")
                        }
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
