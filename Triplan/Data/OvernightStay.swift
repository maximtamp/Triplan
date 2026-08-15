//
//  OvernightStay.swift
//  Triplan
//
//  Created by Maxim Tampere on 11/08/2026.
//

import Foundation
import SwiftData

class OvernightStay {
    var id: UUID = UUID()
    var name: String
    var icon: String?
    var startDate: Date
    var endDate: Date
    var location: (name: String, latitude: Double, longitude: Double)
    var description: String?
    var images: [URL]?
    var price: Double
    
    init(id: UUID, name: String, icon: String? = nil, startDate: Date, endDate: Date, location: (name: String, latitude: Double, longitude: Double), description: String? = nil, images: [URL]? = nil, price: Double) {
        self.id = id
        self.name = name
        self.icon = icon
        self.startDate = startDate
        self.endDate = endDate
        self.location = location
        self.description = description
        self.images = images
        self.price = price
    }
}
