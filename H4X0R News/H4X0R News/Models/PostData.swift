//
//  PostData.swift
//  H4X0R News
//
//  Created by APPLE on 12/19/24.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
    let objectID: String
    let author: String
}
