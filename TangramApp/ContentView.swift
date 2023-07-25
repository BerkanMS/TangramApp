//
//  ContentView.swift
//  TangramApp
//
//  Created by Berkan M. Sevinç on 25.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var largeTriangleColor = Color.blue
    @State private var smallTriangleColor1 = Color.red
    @State private var smallTriangleColor2 = Color.green
    @State private var mediumTriangleColor = Color.yellow
    @State private var parallelogramColor = Color.orange
    @State private var squareColor = Color.purple
    @State private var showSettings = false

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack {
                    Text("Tangram").font(.largeTitle).padding()
                    
                    ShapeView(
                        largeTriangleColor: $largeTriangleColor,
                        smallTriangleColor1: $smallTriangleColor1,
                        smallTriangleColor2: $smallTriangleColor2,
                        mediumTriangleColor: $mediumTriangleColor,
                        parallelogramColor: $parallelogramColor,
                        squareColor: $squareColor
                    )
                }
                .frame(width: geometry.size.width, height: geometry.size.height)

                VStack { // Timer'ı ekranda altta ortalamak için burada bir VStack kullanalım
                    Spacer()
                    TimerView()
                        .frame(maxWidth: .infinity)
                        .padding(.bottom, 20)
                }

                Button(action: {
                    showSettings.toggle()
                }) {
                    Image(systemName: "gearshape.fill")
                        .font(.title)
                        .padding()
                }
                .position(x: geometry.size.width - 40, y: 40)
            }
        }
        .fullScreenCover(isPresented: $showSettings) {
            ColorSelectionView(
                largeTriangleColor: $largeTriangleColor,
                smallTriangleColor1: $smallTriangleColor1,
                smallTriangleColor2: $smallTriangleColor2,
                mediumTriangleColor: $mediumTriangleColor,
                parallelogramColor: $parallelogramColor,
                squareColor: $squareColor
            )
        }
    }
}
