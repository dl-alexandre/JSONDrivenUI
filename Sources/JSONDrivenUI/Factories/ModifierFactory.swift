//
//  ModifierFactory.swift
//  
//
//  Created by Enes Karaosman on 27.11.2020.
//  Forked by Dalton Alexandre on 5/23/24

import SwiftUI

internal struct ModifierFactory {
    /// Applies Frame in case `width` & `height` is not nil.
    struct FrameModifier: ViewModifier {
        var width: CGFloat? = nil
        var height: CGFloat? = nil

        @ViewBuilder func body(content: Content) -> some View {
            content.frame(width: width, height: height)
        }
    }
    
    /// Applies ForegroundColor in case `foregroundColor` is not nil.
    struct ForegroundModifier: ViewModifier {
        var foregroundColor: Color?
        
        @ViewBuilder func body(content: Content) -> some View {
            if let foregroundColor {
                content.foregroundColor(foregroundColor)
            } else {
                content
            }
        }
    }
    
    /// Applies Padding for all edges in case `padding` is not nil.
    struct PaddingModifier: ViewModifier {
        var padding: CGFloat?
        
        @ViewBuilder func body(content: Content) -> some View {
            if let padding {
                content.padding(padding)
            } else {
                content
            }
        }
    }
    
    /// Applies Border in case `borderColor` & `borderWidth` is not nil.
    struct BorderModifier: ViewModifier {
        var borderColor: Color?
        var borderWidth: CGFloat?
        
        @ViewBuilder func body(content: Content) -> some View {
            if let borderWidth, let borderColor {
                content.border(borderColor, width: borderWidth)
            } else {
                content
            }
        }
    }
}
