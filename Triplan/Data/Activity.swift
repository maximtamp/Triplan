//
//  Activity.swift
//  Triplan
//
//  Created by Maxim Tampere on 11/08/2026.
//

import Foundation
import SwiftData

class Activity {
    var id: UUID = UUID()
    var name: String
    var icon: String?
    var date: Date
    var startTime: Date
    var endTime: Date
    var location: (name: String, latitude: Double, longitude: Double)
    var description: String?
    var images: [URL]?
    var price: Double
    
    init(id: UUID, name: String, icon: String? = nil, date: Date, startTime: Date, endTime: Date, location: (name: String, latitude: Double, longitude: Double), description: String? = nil, images: [URL]? = nil, price: Double) {
        self.id = id
        self.name = name
        self.icon = icon
        self.date = date
        self.startTime = startTime
        self.endTime = endTime
        self.location = location
        self.description = description
        self.images = images
        self.price = price
    }
}
