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
            
            RealityKitView()
                .ignoresSafeArea()
            
            Text(String(format: "%.1f", stopWatchManager.secondsElapsed))
                .padding()
                .background(Color.white.opacity(0.7))
                .cornerRadius(15)
                .position(x: 600, y: -350)
                .frame(width: 100, height: 50, alignment: .leading)
            
            Button(action: {
                self.stopWatchManager.start()
                
            })
            {
                TimerButton(label: "Start", buttonColor: Color("Color Primary"))
            }
            
            Image(systemName: "speaker.wave.3.fill")
                .foregroundColor(Color("Color Primary"))
                .background(Color.white.opacity(0.8))
                .font(.system(size: 48))
                .cornerRadius(15)
                .position(x: 0, y: 380)
                .frame(width: 50, height: 50, alignment: .center)
                .padding(10)
        }
    }
}

struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView()
.previewInterfaceOrientation(.landscapeRight)
    }
}
