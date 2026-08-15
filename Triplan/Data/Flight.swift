//
//  Flight.swift
//  Triplan
//
//  Created by Maxim Tampere on 11/08/2026.
//

import Foundation
import SwiftData

class Flight {
    var id: UUID = UUID()
    var locationNameA: String
    var locationA: (name: String, latitude: Double, longitude: Double)
    var locationNameB: String
    var locationB: (name: String, latitude: Double, longitude: Double)
    var departureDay: Date
    var departureTime: Date
    var arrivalDay: Date
    var arrivalTime: Date
    var price: Double
    
    init(id: UUID, locationNameA: String, locationA: (name: String, latitude: Double, longitude: Double), locationNameB: String, locationB: (name: String, latitude: Double, longitude: Double), departureDay: Date, departureTime: Date, arrivalDay: Date, arrivalTime: Date, price: Double) {
        self.id = id
        self.locationNameA = locationNameA
        self.locationA = locationA
        self.locationNameB = locationNameB
        self.locationB = locationB
        self.departureDay = departureDay
        self.departureTime = departureTime
        self.arrivalDay = arrivalDay
        self.arrivalTime = arrivalTime
        self.price = price
    }
}
