//
//  SpatialAircraftClassifierApp.swift
//  SpatialAircraftClassifier
//
//  Created by Doug Holland on 10/15/24.
//

import SwiftUI

@main
struct SpatialAircraftClassifierApp: App {
    var body: some Scene {
        WindowGroup(id: "main") {
            ContentView()
        }
        
        WindowGroup(id: "aircraftClassificationView", for: Aircraft.self) { aircraft in
            AircraftClassificationView(aircraft: aircraft)
        }
        .defaultSize(CGSize(width: 500, height:  720))
        .defaultWindowPlacement { content, context in
            if let main = context.windows.first {
                return WindowPlacement(.trailing(main))
            }
            
            return WindowPlacement(.none)
        }
     }
}
