//
//  NetworkManager.swift
//  HackerNewsSUI
//
//  Created by Vaibhav Shah on 06/08/21.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            
                                self.posts = results.hits
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
