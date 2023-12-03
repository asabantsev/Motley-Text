//
//  ContentView.swift
//  Motley Text
//
//  Created by Aleksey Sabantsev on 03.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var frameWidth: Double = 200.0
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Марафон ").foregroundColor(.gray) + Text("по SwiftUI ") +
                Text("«Отцовский пинок»")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
            }
            .frame(width: frameWidth)
            .frame(minHeight: 200)
            .padding()
            .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            Slider(value: $frameWidth, in: 100...300)
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
