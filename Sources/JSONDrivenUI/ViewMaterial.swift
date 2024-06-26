//
//  ViewMaterial.swift
//  
//
//  Created by Enes Karaosman on 27.11.2020.
//  Forked by Dalton Alexandre on 5/23/24

import Foundation

internal class ViewMaterial: Codable, Identifiable {
    var id = UUID()
    var type: ViewType?
    var values: Values?
    var properties: ViewProperties?
    var subviews: [ViewMaterial]?
    
    enum CodingKeys: String, CodingKey {
        case type
        case values
        case properties
        case subviews
    }
}
