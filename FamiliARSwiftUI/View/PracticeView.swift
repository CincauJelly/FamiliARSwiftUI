//
//  PracticeView.swift
//  FamiliARSwiftUI
//
//  Created by Ivan Valentino Sigit on 09/11/21.
//

import Foundation
import SwiftUI
import RealityKit
import ARKit
import FocusEntity

struct TimerButton: View {

    let label: String
    let buttonColor: Color

    var body: some View {
        Text(label)
            .foregroundColor(.white)
            .padding(.vertical, 20)
            .padding(.horizontal, 90)
            .background(buttonColor)
            .cornerRadius(10)
    }
}

struct PracticeView: View {
    
    @ObservedObject var stopWatchManager = StopWatchManager()
    
    @State private var showingButton = true
    
    var body: some View {
        ZStack{
            
//            RealityKitView()
//                .ignoresSafeArea()
            
//            let finalTime =
            Text(String(format: "%.2f", stopWatchManager.secondsElapsed))
                .padding()
                .background(Color.white.opacity(0.7))
                .cornerRadius(15)
                .position(x: 600, y: -350)
                .frame(width: 100, height: 50, alignment: .leading)
                .onAppear{
                    self.stopWatchManager.start()
                }

            Button(action: {
//                UserDefaults.setValue(finalTime, forKey: "timeInBg")
                self.stopWatchManager.stop()
//                print(finalTime)
            })
            {
                TimerButton(label: "Stop", buttonColor: Color("Color Primary"))
            }
            
            Image(systemName: "speaker.wave.3.fill")
                .foregroundColor(Color("Color Primary"))
                .background(Color.white.opacity(0.8))
                .font(.system(size: 48))
                .cornerRadius(15)
                .position(x: 0, y: 330)
                .frame(width: 50, height: 50, alignment: .center)
                .padding(10)
            
            //if udah di scene terakhir, timer di stop and get the data to user default
//            userDefaults.setValue(finalTime.rounded(), forKey: "timeInBg")
            
            
        }
    }
}

struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView()
.previewInterfaceOrientation(.landscapeRight)
    }
}
