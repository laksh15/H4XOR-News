//
//  DetailsView.swift
//  H4XOR News
//
//  Created by Lakshay Bhatia on 22/12/20.
//

import SwiftUI
import WebKit

struct DetailsView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://www.google.com")
    }
}

