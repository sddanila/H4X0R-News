//
//  ContentView.swift
//  H4X0R News
//
//  Created by Danila Barton-Szabo on 2020-07-08.
//  Copyright © 2020 Danila Barton-Szabo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
        .navigationBarTitle("H4X0R NEWS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "First"),
    Post(id: "2", title: "Second"),
    Post(id: "3", title: "Third")
]
