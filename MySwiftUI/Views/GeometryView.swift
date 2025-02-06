//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Hendy Ou on 2025/2/5.
//

import SwiftUI

struct GeometryView: View {
    var body: some View {
        GeometryReader { geometry in
              VStack(spacing: 10) {
                Text("GeometryReader")
                  .font(.title)
                Text("Buttons example")
                  .font(.subheadline)
                
                HStack() {
                  Button("Button 1") {}
                    .frame(width: geometry.size.width/3, height: 50)
                    .background(.orange)
                  Button("Button 2") {}
                    .frame(width: geometry.size.width/3, height: 50)
                    .background(.yellow)
                  Button("Button 3") {}
                    .frame(width: geometry.size.width/3, height: 50)
                    .background(.green)
                }
              }
            }
        
    }
}

#Preview {
    ContentView()
}
