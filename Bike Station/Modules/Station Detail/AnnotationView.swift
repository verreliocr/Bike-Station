//
//  AnnotationView.swift
//  Bike Station
//
//  Created by Verrelio C. Rizky on 23/10/22.
//

import SwiftUI

struct AnnotationView: View {
    
    var availableBikes: String
    
    var body: some View {
        HStack {
            Image("Bike")
                .background(content: {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 64, height: 64)
                })
            
            Spacer()
            
            Text(availableBikes)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.green)
        }
        
    }
}

struct AnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        AnnotationView(availableBikes: "0")
    }
}
