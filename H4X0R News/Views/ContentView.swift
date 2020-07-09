//
//  ContentView.swift
//  H4X0R News
//
//  Created by Danila Barton-Szabo on 2020-07-08.
//  Copyright © 2020 Danila Barton-Szabo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                }
            }
        .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "First"),
//    Post(id: "2", title: "Second"),
//    Post(id: "3", title: "Third")
//]
