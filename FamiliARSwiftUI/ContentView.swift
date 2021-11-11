//
//  ContentView.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 25/10/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: SimulationView()){
                    Text("Practice")
                }
                .navigationTitle("FamiliAR")
            }
            ExploreView()
        }
        .navigationBarHidden(true)
        .navigationBarTitle(Text("Home"))
        .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
