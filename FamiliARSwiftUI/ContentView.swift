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
        TabView {
            ExploreView()
                .tabItem {
                    Image(systemName: "note")
                    Text("Explore")
                }
            SimulationView()
                .tabItem {
                    Image(systemName: "eye.fill")
                    Text("Simulation")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
