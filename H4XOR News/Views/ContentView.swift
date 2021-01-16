//
//  ContentView.swift
//  H4XOR News
//
//  Created by Lakshay Bhatia on 22/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
        
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(
                    destination: DetailsView(url: post.url)) {
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
                }
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice.init(rawValue: "iPhone 12 Pro"))
    }
}



