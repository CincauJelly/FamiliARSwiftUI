//
//  HistoryView.swift
//  FamiliARSwiftUI
//
//
//

import Foundation
import SwiftUI

struct HistoryView: View {
    init(){
            UITableView.appearance().backgroundColor = .clear
        }
    var body: some View {
        
    ZStack{
        Color("Color Secondary 2").ignoresSafeArea()
        VStack(spacing:80){
            HStack{
                //side bar menu
                
                Text("Practice").foregroundColor(Color("Color Primary")).font(.system(size:24, weight:.bold, design: .default))
            }

            
            HStack{
                HStack(alignment: .top) {
                    VStack(spacing:50){
                        Button("Bicycle Accident"){
                                                    print("tapped")
                                                    //Navigate to Next Scene
                                                }
                                                .padding(25)
                                                .frame(maxWidth: 250)
                                                .foregroundColor(.white)
                                                .background(Color("Color Primary"))
                                                .clipShape(Capsule())

                                                Button("Skin Burn"){
                                                    print("tapped")
                                                    //Navigate to Next Scene
                                                }
                                                .padding(25)
                                                .frame(maxWidth: 250)
                                                .foregroundColor(.white)
                                                .background(Color("Color Primary"))
                                                .clipShape(Capsule())

                                                Button("Fall from Stairs"){
                                                    print("tapped")
                                                    //Navigate to Next Scene
                                                }
                                                .padding(25)
                                                .frame(maxWidth: 250)
                                                .foregroundColor(.white)
                                                .background(Color("Color Primary"))
                                                .clipShape(Capsule())

                                                Button("Knife Cut"){
                                                    print("tapped")
                                                    //Navigate to Next Scene
                                                }
                                                .padding(25)
                                                .frame(maxWidth: 250)
                                                .foregroundColor(.white)
                                                .background(Color("Color Primary"))
                                                .clipShape(Capsule())
                    }.padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
                    
                    ZStack(){
                                            Color("Color Primary")
                                            VStack(){

                                                Text("Learning Records").foregroundColor(.white)
                                                List{
                                                    ForEach(0..<10) {_ in
                                                    VStack(){
                                                      
                                                        HStack(){
                                                            Text("Skin Burn\nOct 22, 2021").foregroundColor(.white)
                                                            Spacer()
                                                            Text("20 menit").foregroundColor(.white)
                                                                .listRowBackground(Color("Color Primary"))
                                                            }
                                                        }
                                                    }.listRowBackground(Color("Color Primary"))
                                                }
                                            }
                                        }.cornerRadius(20).padding(EdgeInsets(top: 0, leading: 20, bottom: 40, trailing: 60))
       
                }
            }//hstack
        }
            
       
    }
    }

}
struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
