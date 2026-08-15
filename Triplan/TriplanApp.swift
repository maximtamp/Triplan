//
//  TriplanApp.swift
//  Triplan
//
//  Created by Maxim Tampere on 11/08/2026.
//

import SwiftUI
import SwiftData

@main
struct TriplanApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Trip.self)
        }
    }
}
