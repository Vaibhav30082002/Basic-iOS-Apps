//
//  PostData.swift
//  HackerNewsSUI
//
//  Created by Vaibhav Shah on 06/08/21.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]
}


struct Post: Decodable, Identifiable {
    
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String? 
    
}
