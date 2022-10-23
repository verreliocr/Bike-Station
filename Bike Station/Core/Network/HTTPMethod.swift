//
//  HTTPMethod.swift
//  Bike Station
//
//  Created by Verrelio C. Rizky on 23/10/22.
//

import Foundation

enum HTTPMethod {
    case GET
    case POST
    case PUT
    case DELETE
    
    var isGet: Bool {
        return self == .GET
    }
}
