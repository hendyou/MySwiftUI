//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Hendy Ou on 2024/4/16.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        List(viewModel.posts) { post in
            VStack{
                Text(post.title)
                    .font(.headline)
                    .foregroundColor(colorScheme == .light ? .blue : .gray)
                Text(post.body)
                    .font(.subheadline)
                    .lineLimit(2, reservesSpace: false)
            }
        }
        .onAppear(perform: viewModel.fetchPosts)
    }
}

#Preview {
    ContentView()
        .environment(\.colorScheme, .light)
//    VStack {
//        ContentView()
//            .environment(\.colorScheme, .light)
//        ContentView()
//            .environment(\.colorScheme, .dark)
//    }
    
    
}

#Preview {
    ContentView()
        .environment(\.colorScheme, .dark)
}
