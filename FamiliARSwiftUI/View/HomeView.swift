//
//  HomeView.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 04/11/21.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Image(uiImage: UIImage(named: "placeholderImage")!)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            VStack{
                
                Button("Start Simulation", action: {
                    print("Start simulation")
                })
                    .padding()
                    .background(Color.red)
                    .clipShape(Capsule())
                    .position(x: 1100, y: 600)
                ScrollView(.horizontal){
                    HStack{
                        ForEach ((0..<5), id: \.self){i in
                            Button("Simulation 1", action: {
                                print("selected \(i)")
                            })
                                .padding()
                                .background(Color.red)
                                .clipShape(Capsule())
                        }
                        .padding()
                    }
                }.padding()
            }
        }
    }
}

struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
