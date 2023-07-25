//
//  ParallelogramView.swift
//  Tangram2
//
//  Created by Berkan M. Sevinç on 25.07.2023.
//

import SwiftUI

struct ParallelogramShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX + rect.width * 0.6, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX + rect.width, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

