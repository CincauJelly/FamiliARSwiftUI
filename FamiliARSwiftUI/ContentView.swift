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
                NavigationLink(destination: GuidanceView(states: "learn")){
                    Text("Learning Simulation")
                        .padding()
                }
                NavigationLink(destination: ExploreView()){
                    Text("Explore First Aid")
                        .padding()
                }
                NavigationLink(destination: HistoryView()){
                    Text("Practice")
                        .padding()
                }
                NavigationLink(destination: ExampleView()){
                    Text("Testing")
                        .padding()
                }
                .frame(alignment: .top)
            }
            ExploreView()
        }
//        .navigationBarTitle(Text("Home"))
//        .edgesIgnoringSafeArea([.top, .bottom])
//        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
