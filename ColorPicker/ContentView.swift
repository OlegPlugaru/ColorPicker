//
//  ContentView.swift
//  ColorPicker
//
//  Created by Whoami on 21.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedColor: Color = .red
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(selectedColor)
                .frame(width: 200, height: 200)
                .padding()
            
            Form {
                ColorPicker("Change Circle Color", selection: $selectedColor)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
