//
//  DistractionTimerApp.swift
//  DistractionTimer
//
//  Created by Anderson  on 2025/1/3.
//

import SwiftUI

@main
struct DistractionTimerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
