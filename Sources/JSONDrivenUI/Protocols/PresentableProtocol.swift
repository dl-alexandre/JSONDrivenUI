//
//  PresentableProtocol.swift
//  
//
//  Created by Enes Karaosman on 27.11.2020.
//  Forked by Dalton Alexandre on 5/23/24

import SwiftUI

internal protocol PresentableProtocol {    
    associatedtype Content: View
    
    func toPresentable() -> Content
}
