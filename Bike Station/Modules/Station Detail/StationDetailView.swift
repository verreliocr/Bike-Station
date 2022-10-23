//
//  StationDetailView.swift
//  Bike Station
//
//  Created by Verrelio C. Rizky on 23/10/22.
//

import SwiftUI
import MapKit

struct StationDetailView: View {
    
    let stationItem: stationItemModel
    
    @StateObject var locationManager = LocationManager()
    
    var stationCoordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: stationItem.geometry?.latitude ?? 0,
                                      longitude: stationItem.geometry?.longitude ?? 0)
    }
    
    var coordinateSpan: MKCoordinateSpan {
        return MKCoordinateSpan(latitudeDelta: 0.01,
                                longitudeDelta: 0.01)
    }
    
    var region: MKCoordinateRegion {
        return MKCoordinateRegion(center: stationCoordinate,
                                  span: coordinateSpan)
    }
    
    var annotations: [stationAnnotation] {
        return [stationAnnotation(coordinate: stationCoordinate)]
    }
    
    var body: some View {
        VStack {
            Map(coordinateRegion: .constant(region),
                interactionModes: [],
                showsUserLocation: true,
                annotationItems: annotations,
                annotationContent: { annotation in
                MapAnnotation(coordinate: annotation.coordinate,
                              content: {
                    AnnotationView(availableBikes: stationItem.properties?.bikes ?? "0")
                })
            })
            .edgesIgnoringSafeArea(.top)
            
            StationItemRow(stationItem: stationItem)
                .frame(height: 200)
        }
    }
}

struct StationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StationDetailView(stationItem: stationItemModel.example)
    }
}
