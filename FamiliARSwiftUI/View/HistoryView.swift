
import Foundation
import SwiftUI
struct HistoryView: View {
    @State var menuOpen: Bool = false
    @State private var showingAlert = false
    @State private var showPopUp: Bool = false
    
    
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {
        ZStack {
            Color("Color Secondary 2").ignoresSafeArea()
            HStack {
                VStack {
                    Button(action: {
                        withAnimation(.linear(duration: 0.3)) {
                            showPopUp.toggle()
                        }
                    }, label: {
                        Image("menu")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("Color Primary"))
                            .padding(20)
                    })
                    Spacer()
                }
                
                Spacer()
            }
            ZStack{
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
                .padding(EdgeInsets(top: 60, leading: 60, bottom: 40, trailing: 60))
            MainNavigationView(page: .practice, show: $showPopUp)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
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
