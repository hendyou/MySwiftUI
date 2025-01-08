//
//  ContentViewModel.swift
//  MySwiftUI
//
//  Created by Hendy Ou on 2024/4/28.
//

import Foundation
import Alamofire


class ContentViewModel: ObservableObject {
    @Published var posts:[Post] = []
    
    func fetchPosts() {
        AF.request("https://jsonplaceholder.typicode.com/posts")
            .responseDecodable(of: [Post].self) { respone in
                switch respone.result {
                case .success(let posts):
                    self.posts = posts
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
    }
}
