//
//  DetailView.swift
//  H4X0R News
//
//  Created by Danila Barton-Szabo on 2020-07-08.
//  Copyright © 2020 Danila Barton-Szabo. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
