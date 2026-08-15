//
//  ContentView.swift
//  Triplan
//
//  Created by Maxim Tampere on 11/08/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house", value: 0) {
                Home(selectedTab: $selectedTab)
            }
            Tab("Trips", systemImage: "suitcase.fill", value: 1) {
                Trips()
            }
        }
    }
}

#Preview {
    ContentView()
}
