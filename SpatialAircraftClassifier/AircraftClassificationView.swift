//
//  AircraftClassificationView.swift
//  SpatialAircraftClassifier
//
//  Created by Doug Holland on 10/15/24.
//

import SwiftUI

struct AircraftClassificationView: View {
    @Binding var aircraft: Aircraft?
    
    var body: some View {
        VStack {
            HStack {
                if let aircraft = aircraft {
                    // display the aircraft specified by the raw value, e.g. F-15, F-16, etc.
                    Image(aircraft.rawValue)
                        .resizable()
                        .scaledToFit()
                    
                    // display the aircraft name
                    Text(aircraft.name)
                }
            }
            .frame(maxHeight: 200)
        }
    }
}

#Preview {
    AircraftClassificationView(aircraft: .constant(Aircraft(rawValue: "f16")))
}
