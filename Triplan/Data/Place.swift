//
//  Place.swift
//  Triplan
//
//  Created by Maxim Tampere on 11/08/2026.
//

import Foundation
import SwiftData

@Model
class Place {
    var id: UUID = UUID()
    var name: String
    var latitude: Double?
    var longitude: Double?

    init(id: UUID = UUID(), name: String, latitude: Double? = nil, longitude: Double? = nil) {
        self.id = id
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
    }
}
