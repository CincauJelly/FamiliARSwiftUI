//
//  BtnComponent.swift
//  FamiliARSwiftUI
//
//  Created by Azrullah Kainage on 05/11/21.
//

import SwiftUI

struct BtnOptionComponent: View {
    @State var title: String
    @Binding var selected: String
    
    var body: some View {
        Button(title, action: {setSelected()})
            .buttonStyle(PlainButtonStyle())
            .frame(width: 198, height: 44)
            .background(selected == title ? Color("Color Primary") : Color("Color Secondary 2"))
            .cornerRadius(10)
            .foregroundColor(selected == title ? .white : .black)
            .font(.system(size: 14, weight: .bold))
            .padding(.trailing, 30)
    }
    
    func setSelected() {
        selected = title
    }
}
