//
//  CrewlApp.swift
//  Crewl
//
//  Created by NomoteteS on 1.01.2023.
//

import SwiftUI

@main
struct CrewlApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationServiceView()
            }
        }
    }
}
