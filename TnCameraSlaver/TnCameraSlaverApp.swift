//
//  TnCameraSlaverApp.swift
//  TnCameraSlaver
//
//  Created by Thinh Nguyen on 9/6/24.
//

import SwiftUI

@main
struct TnCameraSlaverApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
