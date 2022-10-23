//
//  StationListViewModel.swift
//  Bike Station
//
//  Created by Verrelio C. Rizky on 23/10/22.
//

import Foundation

class StationListViewModel: ObservableObject {
    @Published var stationList: [stationItemModel] = []
    
    let request = HTTPRequest()
    
    func getStationList() {
        request.call(.getStationList, bodyParams: [:]) { data, _ in
            if let result = stationListModel.decode(from: data) {
                self.stationList = result.features ?? []
            }else{
                self.stationList = []
            }
        }
    }
}
