//
//  FamiliARSwiftUIApp.swift
//  FamiliARSwiftUI
//
//  Created by Shiddiq Syuhada on 25/10/21.
//

import SwiftUI

@main
struct FamiliARSwiftUIApp: App {
    @AppStorage ("Onboarding") var onboardingActive :Bool = true
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            if onboardingActive {
                Onboarding()
            }else{
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
