//
//  ContentView.swift
//  colorpicker
//
//  Created by Dave McCollough on 8/22/22.
//

import SwiftUI

struct ContentView: View {
//    Add state variable
    @State var colorChoice: Color = .red
    
    var body: some View {
        VStack {
            ColorPicker("Choose your color", selection: $colorChoice)
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .padding(25)
                .foregroundColor(.white)
                .opacity(0.7)
                .background(colorChoice)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
