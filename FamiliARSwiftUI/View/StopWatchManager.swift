//
//  StopWatchManager.swift
//  FamiliARSwiftUI
//
//  Created by Ivan Valentino Sigit on 10/11/21.
//

import Foundation
import SwiftUI

enum stopWatchMode {
    case running
    case stopped
    case paused
}

class StopWatchManager : ObservableObject{
    
    @Published var mode: stopWatchMode = .stopped
    @Published var secondsElapsed = 0.0
    var timer = Timer()
    
    func start() {
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            self.secondsElapsed += 0.1
        }
    }
    
    func stop(){
        timer.invalidate()
        secondsElapsed = 0
        mode = .stopped
    }
}
