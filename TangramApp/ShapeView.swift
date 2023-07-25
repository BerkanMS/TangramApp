//
//  ShapeView.swift
//  Tangram2
//
//  Created by Berkan M. Sevinç on 25.07.2023.
//

import SwiftUI

struct ShapeView: View {
    @Binding var largeTriangleColor: Color
    @Binding var smallTriangleColor1: Color
    @Binding var smallTriangleColor2: Color
    @Binding var mediumTriangleColor: Color
    @Binding var parallelogramColor: Color
    @Binding var squareColor: Color

    var body: some View {
        ZStack {
            // Orta boyutlu üçgen
            Image("medium_triangle")
                .resizable()
                .frame(width: 100, height: 100)
                .colorMultiply(mediumTriangleColor)
                .rotationEffect(.degrees(-45))
                .position(x: 100, y: 100)

            // Büyük üçgen 1
            Image("large_triangle")
                .resizable()
                .frame(width: 150, height: 150)
                .colorMultiply(largeTriangleColor)
                .rotationEffect(.degrees(45))
                .position(x: 200, y: 250)

            // Küçük üçgen 1
            Image("small_triangle")
                .resizable()
                .frame(width: 75, height: 75)
                .colorMultiply(smallTriangleColor1)
                .rotationEffect(.degrees(45))
                .position(x: 150, y: 200)

            // Büyük üçgen 2
            Image("large_triangle")
                .resizable()
                .frame(width: 150, height: 150)
                .colorMultiply(largeTriangleColor)
                .rotationEffect(.degrees(-45))
                .position(x: 300, y: 50)

            // Küçük üçgen 2
            Image("small_triangle")
                .resizable()
                .frame(width: 75, height: 75)
                .colorMultiply(smallTriangleColor2)
                .rotationEffect(.degrees(-45))
                .position(x: 250, y: 100)

            // Paralelkenar
            Image("parallelogram")
                .resizable()
                .frame(width: 100, height: 50)
                .colorMultiply(parallelogramColor)
                .rotationEffect(.degrees(-45))
                .position(x: 300, y: 250)

            // Kare
            Image("square")
                .resizable()
                .frame(width: 100, height: 100)
                .colorMultiply(squareColor)
                .position(x: 200, y: 150)
        }
    }
}
