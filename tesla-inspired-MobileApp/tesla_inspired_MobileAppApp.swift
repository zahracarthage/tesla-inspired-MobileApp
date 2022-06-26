//
//  tesla_inspired_MobileAppApp.swift
//  tesla-inspired-MobileApp
//
//  Created by Zahra chouchane on 26/6/2022.
//

import SwiftUI

@main
struct tesla_inspired_MobileAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
