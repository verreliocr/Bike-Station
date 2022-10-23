//
//  StationListView.swift
//  Bike Station
//
//  Created by Verrelio C. Rizky on 23/10/22.
//

import SwiftUI

struct StationListView: View {
    
    @StateObject private var viewModel = StationListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.stationList, id: \.id) { station in
                    Section {
                        NavigationLink(destination: {
                            StationDetailView(stationItem: station)
                        }, label: {
                            StationItemRow(stationItem: station)
                        })
                    }
                }
            }
            .navigationTitle("Bike Station")
            .onAppear(perform: viewModel.getStationList)
        }
    }
}

struct StationListView_Previews: PreviewProvider {
    static var previews: some View {
        StationListView()
    }
}
