//
//  CreateTrip.swift
//  Triplan
//
//  Created by Maxim Tampere on 15/08/2026.
//

import SwiftUI
import SwiftData

struct CreateTrip: View {
    @Environment(\.modelContext) private var context
    @Binding var selectedTab: Int
    @Binding var showCreateTrip: Bool
    
    @State private var tripName: String = ""
    @State private var startDate: Date = Date()
    @State private var endDate: Date = Date()
    
    var body: some View {
        VStack{
            TextInput(label: "Trip name", placeholder: "Hiking adventure", data: $tripName)
            HStack{
                DatePicker(
                    "Start date",
                    selection: $startDate,
                    displayedComponents: [.date]
                )
                .labelsHidden()
                Text("-")
                DatePicker(
                    "End date",
                    selection: $endDate,
                    in: Calendar.current.date(byAdding: .day, value: 1, to: startDate)!...,
                    displayedComponents: [.date]
                )
                .labelsHidden()
            }
            .onChange(of: startDate, initial: false) { oldStart, newStart in
                let minEnd = Calendar.current.date(byAdding: .day, value: 1, to: newStart)!
                if endDate < minEnd {
                    endDate = minEnd
                }
            }
            Spacer()
            CustomButton(
                content: {
                    Text("appel")
                },
                disabled: false,
                loading: false,
                action: {
                    let newTrip = Trip(
                        name: tripName,
                        startDate: startDate,
                        endDate: endDate,
                        activities: [],
                        flights: [],
                        overnightStays: [],
                        transportations: []
                    )
                    context.insert(newTrip)
                    selectedTab = 1
                    showCreateTrip = false
                }
            )
        }
    }
}

#Preview {
    CreateTrip(selectedTab: .constant(0), showCreateTrip: .constant(false))
}
