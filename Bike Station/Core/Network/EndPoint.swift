//
//  EndPoint.swift
//  Bike Station
//
//  Created by Verrelio C. Rizky on 23/10/22.
//

import Foundation

private let baseURL = "http://www.poznan.pl/mim/plan/map_service.html"

enum EndPoint {
    case getStationList
    
    var method: HTTPMethod {
        switch self {
        case .getStationList:
            return .GET
        }
    }
    
    var url: String {
        var path = ""
        switch self {
        case .getStationList:
            path = "?mtype=pub_transport&co=stacje_rowerowe"
        }
        
        return baseURL + path
    }
}
