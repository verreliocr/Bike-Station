//
//  StationListView.swift
//  Bike Station
//
//  Created by Verrelio C. Rizky on 23/10/22.
//

import SwiftUI

struct StationListView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    StationItemRow()
                }
            }
            .navigationTitle("Bike Station")
        }
    }
}

struct StationListView_Previews: PreviewProvider {
    static var previews: some View {
        StationListView()
    }
}
