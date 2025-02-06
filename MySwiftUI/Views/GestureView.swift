//
//  GestureView.swift
//  MySwiftUI
//
//  Created by Hendy Ou on 2025/2/5.
//

import SwiftUI

struct GestureView: View {
    @State private var offset: CGPoint = .zero
    
    var body: some View {
        Text("\(Int(offset.x))")
        
        Rectangle()
            .fill(Color.blue)
            .frame(width: 300, height: 100)
            .gesture(DragGesture(minimumDistance: 0)
                .onChanged({ value in
//                    print(value.location.x)
                    offset.x = value.location.x
                }))
    }
}

#Preview {
    GestureView()
}
