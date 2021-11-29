//
//  PrimaryButtonComp.swift
//  FamiliARSwiftUI
//
//  Created by Azrullah Kainage on 05/11/21.
//

import SwiftUI

struct PrimaryButtonComp: View {
    @State var title: String!
    var body: some View {
        NavigationLink(destination: SimulationView()) {
            Text(title)
        }
        .frame(width: 279, height: 62)
        .background(Color("Color Primary"))
        .cornerRadius(50)
        .foregroundColor(.white)
        .font(.system(size: 18, weight: .bold))
    }
}

struct PrimaryButtonComp_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButtonComp()
    }
}
