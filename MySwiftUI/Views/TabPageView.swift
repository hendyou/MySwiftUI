//
//  TabPageView.swift
//  MySwiftUI
//
//  Created by Hendy Ou on 2025/1/8.
//

import SwiftUI

struct TabPageView: View {
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    @State var selection = 0
    let colors = [Color.blue, Color.pink, Color.yellow]
    
    var body: some View {
        
        TabView(selection: $selection) {
            ForEach(0..<colors.count, id: \.self) { index in
                Text("\(colors[index]), Selection: \(selection)")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(colors[index])
                    .font(.largeTitle)
            }
        }.tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .ignoresSafeArea()
            .onReceive(timer) { _ in
                withAnimation {
                    selection = selection < 2 ? selection + 1 : 0
                }
            }
    }
}

#Preview {
    TabPageView()
}
