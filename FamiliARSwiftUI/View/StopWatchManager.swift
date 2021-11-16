//
//  StopWatchManager.swift
//  FamiliARSwiftUI
//
//  Created by Ivan Valentino Sigit on 10/11/21.
//

import Foundation
import SwiftUI

class StopWatchManager : ObservableObject{
    
    @Published var secondsElapsed = 0.0
    var timer = Timer()
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            self.secondsElapsed += 0.1
        }
    }
}
