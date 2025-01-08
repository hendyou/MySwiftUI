//
//  Post.swift
//  MySwiftUI
//
//  Created by Hendy Ou on 2024/4/28.
//

import Foundation

class Post: Decodable, Identifiable {
    let id: Int
    let title: String
    let body: String
}
