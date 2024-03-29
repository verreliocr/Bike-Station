//
//  IRequest.swift
//  Bike Station
//
//  Created by Verrelio C. Rizky on 23/10/22.
//

import Foundation

protocol IRequest {
    func call(_ endPoint: EndPoint, bodyParams: [String: Any], completion: @escaping (Data?, ErrorType?) -> Void)
}
