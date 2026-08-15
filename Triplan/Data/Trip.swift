//
//  Trip.swift
//  Triplan
//
//  Created by Maxim Tampere on 11/08/2026.
//

import Foundation
import SwiftData

class Trip {
    var id: UUID = UUID()
    var name: String
    var icon: String?
    var startDate: Date
    var endDate: Date
    var description: String?
    var activities: [Activity]
    var flights: [Flight]
    var overnightStays: [OvernightStay]
    var transportations: [Transportation]
    
    init(id: UUID, name: String, icon: String? = nil, startDate: Date, endDate: Date, description: String? = nil, activities: [Activity], flights: [Flight], overnightStays: [OvernightStay], transportations: [Transportation]) {
        self.id = id
        self.name = name
        self.icon = icon
        self.startDate = startDate
        self.endDate = endDate
        self.description = description
        self.activities = activities
        self.flights = flights
        self.overnightStays = overnightStays
        self.transportations = transportations
    }
}
