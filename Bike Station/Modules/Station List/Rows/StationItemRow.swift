//
//  StationItemRow.swift
//  Bike Station
//
//  Created by Verrelio C. Rizky on 23/10/22.
//

import SwiftUI
import CoreLocation

struct StationItemRow: View {
    
    @StateObject var locationManager = LocationManager()
    let stationItem: stationItemModel
    
    var userLocation: CLLocation {
        return CLLocation(latitude: locationManager.lastLocation?.coordinate.latitude ?? 0,
                          longitude: locationManager.lastLocation?.coordinate.longitude ?? 0)
    }
    
    var stationLocation: CLLocation {
        return CLLocation(latitude: stationItem.geometry?.latitude ?? 0,
                          longitude: stationItem.geometry?.longitude ?? 0)
    }
    
    var distanceToStation: String {
        let distance = userLocation.distance(from: stationLocation)
        let distanceInt = Int(distance)
        
        return "\(distanceInt) m"
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(stationItem.properties?.label ?? "")
                .font(.title)
                .fontWeight(.bold)
            
            HStack {
                Text(distanceToStation)
                    .font(.body)
                Text("Bike Station")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            HStack {
                VStack {
                    Image("Bike")
                    Text("Available Bikes")
                        .font(.body)
                    
                    Spacer()
                    
                    Text(stationItem.properties?.bikes ?? "0")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                }
                
                Spacer()
                
                VStack {
                    Image("Lock")
                    Text("Available Places")
                        .font(.body)
                    
                    Spacer()
                    
                    Text(stationItem.properties?.bikeRacks ?? "0")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
            }
        }
        .padding(.all)
    }
}

struct StationItemRow_Previews: PreviewProvider {
    static var previews: some View {
        StationItemRow(stationItem: stationItemModel.example)
    }
}
