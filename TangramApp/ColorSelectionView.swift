//
//  ColorSelectionView.swift
//  Tangram2
//
//  Created by Berkan M. Sevinç on 25.07.2023.
//
import SwiftUI

struct ColorSelectionView: View {
    @Binding var largeTriangleColor: Color
    @Binding var smallTriangleColor1: Color
    @Binding var smallTriangleColor2: Color
    @Binding var mediumTriangleColor: Color
    @Binding var parallelogramColor: Color
    @Binding var squareColor: Color
    @Environment(\.presentationMode) var presentationMode // Ekranı kapatmak için environment değişkeni

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Renk Seçimi")) {
                    ColorPicker("Büyük Üçgen Rengi", selection: $largeTriangleColor)
                    ColorPicker("Küçük Üçgen 1 Rengi", selection: $smallTriangleColor1)
                    ColorPicker("Küçük Üçgen 2 Rengi", selection: $smallTriangleColor2)
                    ColorPicker("Orta Üçgen Rengi", selection: $mediumTriangleColor)
                    ColorPicker("Paralelkenar Rengi", selection: $parallelogramColor)
                    ColorPicker("Kare Rengi", selection: $squareColor)
                }
            }
            .navigationBarTitle("Ayarlar")
            .navigationBarItems(trailing:
                Button("Geri") {
                    presentationMode.wrappedValue.dismiss() // Geri butonuna basıldığında ekranı kapat
                }
            )
        }
    }
}
