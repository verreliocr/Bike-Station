//
//  StationItemRow.swift
//  Bike Station
//
//  Created by Verrelio C. Rizky on 23/10/22.
//

import SwiftUI

struct StationItemRow: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Station Name")
                .font(.title)
                .fontWeight(.bold)
            
            HStack {
                Text("Distance")
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
                    
                    Text("0")
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
                    
                    Text("0")
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
        StationItemRow()
    }
}
