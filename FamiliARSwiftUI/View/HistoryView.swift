//
//  HistoryView.swift
//  FamiliARSwiftUI
//
//
//

import Foundation
import SwiftUI

struct HistoryView: View {
    @State var menuOpen: Bool = false
    @State private var showingAlert = false

    
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {

        
    ZStack{
        Color("Color Secondary 2").ignoresSafeArea()
        VStack(spacing:80){
            HStack{
                //side bar menu


                
                Text("Practice")
                    .foregroundColor(Color("Color Primary"))
                    .font(.system(size:24, weight:.bold, design: .default))
            }

            
            HStack{
                HStack(alignment: .top) {
                    VStack(spacing:50){
                        NavigationLink(destination: GuidanceView(states: "practice")){
                            Text("Skin Burn")
                            .padding(25)
                            .frame(maxWidth: 250)
                            .foregroundColor(.white)
                            .background(Color("Color Primary"))
                            .clipShape(Capsule())
                        }
                        
                        Button("Bicycle Accident"){
                            showingAlert = true
                            //Navigate to Next Scene
                        }
                        .padding(25)
                        .frame(maxWidth: 250)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .clipShape(Capsule())
                        .alert(isPresented: $showingAlert){
                            Alert(title: Text("Notice"), message: Text("This Simulation is not avilable yet"), dismissButton: .default(Text("Close")))
                        }

                        Button("Fall from Stairs"){
                            showingAlert = true
                            //Navigate to Next Scene
                        }
                        .padding(25)
                        .frame(maxWidth: 250)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .clipShape(Capsule())
                        .alert(isPresented: $showingAlert){
                            Alert(title: Text("Notice"), message: Text("This Simulation is not avilable yet"), dismissButton: .default(Text("Close")))
                        }

                        Button("Knife Cut"){
                            showingAlert = true
                            //Navigate to Next Scene
                        }
                        .padding(25)
                        .frame(maxWidth: 250)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .clipShape(Capsule())
                    }.padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
                        .alert(isPresented: $showingAlert){
                            Alert(title: Text("Notice"), message: Text("This Simulation is not avilable yet"), dismissButton: .default(Text("Close")))
                        }
                    
                    ZStack(){
                        Color("Color Primary")
                        VStack(){

                            Text("Learning Records").foregroundColor(.white).padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))

                     
                            ScrollView{
                              
                                    ForEach(HistoryViewModel.init().items) {item in
                                        VStack(){
                        
                                            HStack(){
                                                
                                                Text("\(item.title)\n\(item.date)").foregroundColor(.white).padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                                                Spacer()
                                                
                                                Text("\(item.duration) minutes").foregroundColor(.white)
                                                    .listRowBackground(Color("Color Primary")).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                                                }
                                            
                                        }
                                        Divider()
                                            .background(Color.white)
                                       
                                    }.listRowBackground(Color("Color Primary"))
                                
                            }
  
                            
                        }
                    }.cornerRadius(20)
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 40, trailing: 60))
       
                }
            }//hstack
        }
            
       
    }
    }
    
    func openMenu() {
        self.menuOpen.toggle()
    }

}


struct SideMenu: View {
    let width: CGFloat
    let isOpen: Bool
    let menuClose: () -> Void
    
    var body: some View {
        ZStack {

            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.3))
            .opacity(self.isOpen ? 1.0 : 0.0)
            .animation(Animation.easeIn.delay(0.25))
            .onTapGesture {
                self.menuClose()
            }
            
            HStack {
                
                MenuContent()
            
                    .frame(width: self.width)
                    .background(Color("Color Primary"))
                    .offset(x: self.isOpen ? 0 : -self.width)
                    .animation(.default)
                
                Spacer()
            }
        }
    }
}

struct MenuContent: View {
    var body: some View {

        List {

            
            Label("Learning Simulation", image: "unselect learning simulation").foregroundColor(.white)
                .listRowBackground(Color("Color Primary"))
            
            Label("Explore First Aid", image: "unselect learning simulation").foregroundColor(.white)
                .listRowBackground(Color("Color Primary"))

            Label("Practice", image: "unselect learning simulation").foregroundColor(.white)
                .listRowBackground(Color("Color Primary"))


         
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
