//
//  Home.swift
//  Triplan
//
//  Created by Maxim Tampere on 15/08/2026.
//

import SwiftUI

struct Home: View {
        
    @State private var showCreateTrip: Bool = false
    @Binding var selectedTab: Int

    var body: some View {
        ZStack{
            Button("Create Trip"){
                showCreateTrip = true
            }
            .sheet(isPresented: $showCreateTrip){
                CreateTrip(selectedTab: $selectedTab, showCreateTrip: $showCreateTrip)
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    .presentationDetents([.height(300)])
            }
            
        }
    }
}

#Preview {
    Home(selectedTab: .constant(0))
}
