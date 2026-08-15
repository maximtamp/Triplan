//
//  Transportation.swift
//  Triplan
//
//  Created by Maxim Tampere on 11/08/2026.
//

import Foundation
import SwiftData

enum TransportationType {
    case car
    case bike
    case walk
}

class Transportation {
    var id: UUID = UUID()
    var locationA: (name: String, latitude: Double, longitude: Double)
    var locationB: (name: String, latitude: Double, longitude: Double)
    var transportationType: TransportationType
    var duration: TimeInterval
    var distance: Double
    
    init(id: UUID, locationA: (latitude: Double, longitude: Double), locationB: (latitude: Double, longitude: Double), transportationType: TransportationType, duration: TimeInterval, distance: Double) {
        self.id = id
        self.locationA = locationA
        self.locationB = locationB
        self.transportationType = transportationType
        self.duration = duration
        self.distance = distance
    }
}
