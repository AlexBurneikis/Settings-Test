//
//  ContentView.swift
//  ListTest
//
//  Created by Alexander Burneikis on 6/6/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showSettingsSheet = false
    @State private var topColor = Color.red
    @State private var bottomColor = Color.blue
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            .onTapGesture {
                showSettingsSheet.toggle()
            }
            .sheet(isPresented: $showSettingsSheet) {
                Form {
                    ColorPicker("Top Color", selection: $topColor)
                    ColorPicker("Bottom Color", selection: $bottomColor)
                    Button("Done") {
                        showSettingsSheet.toggle()
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
