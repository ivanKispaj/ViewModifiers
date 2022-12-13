//
//  CircleShadow.swift
//  
//
//  Created by Ivan Konishchev on 13.12.2022.
//

import SwiftUI

@available(iOS 13.0, *)
public struct CircleShadow: ViewModifier {
    var color: Color
    var circleRadius: CGFloat = 50
    var shadowOffset: CGFloat
    
    public func body(content: Content) -> some View {
        content
            .cornerRadius(circleRadius)
            .background(Circle()
                .fill(.white)
                .shadow(color: color, radius: shadowOffset)
            )
    }
    public init(color: Color, shadowOffset: CGFloat, circleRadius: CGFloat = 50) {
        self.color = color
        self.circleRadius = circleRadius
        self.shadowOffset = shadowOffset
    }
}

@available(iOS 13.0, *)
public extension View {
    
    func circleShadow(color: Color = .gray, offset: CGFloat = 4) -> some View {
        modifier(CircleShadow(color: color, shadowOffset: offset))
    }
}
