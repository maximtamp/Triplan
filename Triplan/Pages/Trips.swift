//
//  Trips.swift
//  Triplan
//
//  Created by Maxim Tampere on 15/08/2026.
//

import SwiftUI
import SwiftData

struct Trips: View {
    @Query private var trips: [Trip]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        List(trips) { trip in
            VStack(alignment: .leading) {
                Text(trip.name)
                HStack{
                    Text(trip.startDate, style: .date)
                    Text("–")
                        .foregroundStyle(.secondary)
                    Text(trip.endDate, style: .date)
                }
            }
        }
    }
}

#Preview {
    Trips()
        .modelContainer(for: Trip.self, inMemory: true)
}
