//
//  PostData.swift
//  H4X0R News
//
//  Created by Danila Barton-Szabo on 2020-07-08.
//  Copyright © 2020 Danila Barton-Szabo. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let url: String?
    let points: Int
}
