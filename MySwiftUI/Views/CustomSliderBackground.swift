//
//  CustomSliderBackground.swift
//  MySwiftUI
//
//  Created by Hendy Ou on 2025/1/8.
//

import SwiftUI

struct CustomSliderBackground: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                // 绘制自定义的背景形状
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.gray)
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.2)
                
                // 绘制两端的圆形装饰
                Circle()
                    .fill(Color.blue)
                    .frame(width: 10, height: 10)
                    .offset(x: 0, y: geometry.size.height * -0.1)
                    .padding(.leading, 5)
                
                Circle()
                    .fill(Color.blue)
                    .frame(width: 10, height: 10)
                    .offset(x: geometry.size.width, y: geometry.size.height * -0.1)
                    .padding(.trailing, 5)
            }
        }
        .gesture(DragGesture(minimumDistance: 0)
            .onChanged({ value in
                print(value)
            }))
        .gesture(TapGesture().onEnded({ value in
            print(value)
        }))
    }
}

#Preview {
    VStack {
        Slider(value: .constant(0.5), in: 0...1, minimumValueLabel: Text("0%"), maximumValueLabel: Text("100%")) {
            // 将自定义背景视图用作滑块的 track
            CustomSliderBackground()
        }
        .accentColor(Color.blue) // 滑块的颜色
    }
}
