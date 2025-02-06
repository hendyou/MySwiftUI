//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Hendy Ou on 2025/2/5.
//

import SwiftUI

struct GeometryView: View {
    @State var size: CGSize = .zero
        
        var body: some View {
            VStack {
                Text("text width: \(String(format: "%.2f", size.width))")
                Text("text height: \(String(format: "%.2f", size.height))")
                
                Text("hello")
                    .saveSize(in: $size)
                    .background(Color.yellow)
            }
            
        }
}

#Preview {
    GeometryView()
}
