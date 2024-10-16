//
//  AircraftClassificationView.swift
//  SpatialAircraftClassifier
//
//  Created by Doug Holland on 10/15/24.
//

import SwiftUI

struct AircraftClassificationView: View {
    //@Binding var aircraft: Aircraft?
    @Binding var result: AircraftClassificationResult?
    
    var body: some View {
        VStack {
            HStack {
                if let result = result {
                    // display the aircraft specified by the raw value, e.g. F-15, F-16, etc.
                    Image(Aircraft(rawValue: result.identifier)!.rawValue)
                        .resizable()
                        .scaledToFit()
                    
                    VStack(alignment: .leading) {
                        // display the aircraft name
                        Text(Aircraft(rawValue: result.identifier)!.name)
                        
                        // display the confidence
                        Text("confidence: \(result.confidence * 100, specifier: "%.2f")%")
                    }
                    
                } else {
                    Text("aircraft is nil")
                }
            }
            .frame(maxHeight: 200)
        }
    }
}

#Preview {
    AircraftClassificationView(result: .constant(.init(id: UUID.init(), identifier: "f15", confidence: 0.0)))
}
