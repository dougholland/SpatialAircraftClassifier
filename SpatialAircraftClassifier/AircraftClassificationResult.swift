//
//  AircraftClassificationResult.swift
//  SpatialAircraftClassifier
//
//  Created by Doug Holland on 10/16/24.
//

import SwiftUI
import Vision

struct AircraftClassificationResult: Identifiable, Codable, Hashable {
    let id: UUID
    let identifier: String
    let confidence: Float
}
