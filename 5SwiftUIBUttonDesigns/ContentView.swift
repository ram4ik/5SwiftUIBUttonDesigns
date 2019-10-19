//
//  ContentView.swift
//  5SwiftUIBUttonDesigns
//
//  Created by ramil on 19.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let gradient = LinearGradient(gradient: Gradient(colors: [Color("ColorDarkAccent"), Color("ColorLightAccent")]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        VStack(spacing: 15) {
            
            // The Classic
            Button("The Classic", action: {})
            
            
            // The Solid
            Button(action: {}) {
                Text("The Solid")
                    .foregroundColor(Color("ColorBackground"))
                    .padding()
            }
            .background(RoundedRectangle(cornerRadius: 10   , style: .continuous))
            
            
            // The Outline
            Button(action: {}) {
                Text("The Outline")
                    .padding()
            }
            .background(Capsule().stroke(lineWidth: 2))
            
            
            // The Image & Text
            Button(action: {}) {
                Image(systemName: "hand.thumbsup.fill")
                Text("The Image & Text")
            }
            
            
            // The Translucent Background
            Button(action: {}) {
                Text("The Translucent Background")
                    .padding()
            }
            .background(RoundedRectangle(cornerRadius: 15)
                .opacity(0.2))
            
            
            // BONUS!
            Button("Bonus!", action: {})
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
            
            // The Gradient
            Button(action: {}) {
                Text("The Gradient")
                    .padding()
            }
            .background(Capsule()
                .stroke(gradient, lineWidth: 5)
                .saturation(1.8))
            
        }.font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
