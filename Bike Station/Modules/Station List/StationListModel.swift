//
//  StationListModel.swift
//  Bike Station
//
//  Created by Verrelio C. Rizky on 23/10/22.
//

import Foundation
import MapKit

struct stationListModel: Codable {
    var features: [stationItemModel]?
    
    enum CodingKeys: String, CodingKey {
        case features
    }
}

struct stationItemModel: Codable {
    var id: String?
    var type: String?
    var geometry: stationGeometryModel?
    var properties: stationPropertiesModel?
    
    enum CodingKeys: String, CodingKey {
        case id, type, geometry, properties
    }
}

struct stationGeometryModel: Codable {
    var coordinates: [Double]?
    var type: String?
    
    var latitude: Double {
        return coordinates?[1] ?? 0
    }
    
    var longitude: Double {
        return coordinates?[0] ?? 0
    }
    
    enum CodingKeys: String, CodingKey {
        case coordinates, type
    }
}

struct stationAnnotation: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}

struct stationPropertiesModel: Codable {
    var label: String?
    var freeRacks: String?
    var bikes: String?
    var bikeRacks: String?
    var updated: String?
    
    enum CodingKeys: String, CodingKey {
        case label, bikes, updated
        case freeRacks = "free_racks"
        case bikeRacks = "bike_racks"
    }
}

extension stationItemModel {
    
    static var example: stationItemModel {

        stationItemModel(id: "",
                         type: "",
                         geometry: stationGeometryModel(),
                         properties: stationPropertiesModel(label: "Station",
                                                            freeRacks: "0",
                                                            bikes: "0",
                                                            bikeRacks: "0",
                                                            updated: ""))
        
    }
}
