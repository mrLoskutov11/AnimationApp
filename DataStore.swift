//
//  DataStore.swift
//  AnimationApp
//
//  Created by Антон Лоскутов on 02.11.2022.
//

import Foundation
import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases.map { $0.rawValue }
    let curves = AnimationCurve.allCases.map { $0.rawValue }
    
    private init() {}
}
