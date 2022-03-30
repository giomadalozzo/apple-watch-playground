//
//  AppleWatchPlaygroundsApp.swift
//  AppleWatchPlaygrounds WatchKit Extension
//
//  Created by Giovanni Madalozzo on 30/03/22.
//

import SwiftUI

@main
struct AppleWatchPlaygroundsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
