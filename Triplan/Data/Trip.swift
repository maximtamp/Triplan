//
//  Trip.swift
//  Triplan
//
//  Created by Maxim Tampere on 11/08/2026.
//

import Foundation
import SwiftData

@Model
class Trip {
    var id: UUID = UUID()
    var name: String
    var icon: String?
    var startDate: Date
    var endDate: Date
    var tripDescription: String?
    var activities: [String]
    var flights: [String]
    var overnightStays: [String]
    var transportations: [String]
    
    init(name: String, icon: String? = nil, startDate: Date, endDate: Date, tripDescription: String? = nil, activities: [String], flights: [String], overnightStays: [String], transportations: [String]) {
        self.name = name
        self.icon = icon
        self.startDate = startDate
        self.endDate = endDate
        self.tripDescription = tripDescription
        self.activities = activities
        self.flights = flights
        self.overnightStays = overnightStays
        self.transportations = transportations
    }
}
