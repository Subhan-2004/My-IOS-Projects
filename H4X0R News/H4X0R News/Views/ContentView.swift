//
//  ContentView.swift
//  H4X0R News
//
//  Created by APPLE on 12/19/24.
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
                        VStack{
                            Text(post.title)
                            Text("By: \(post.author)")
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                        }
                    }
                }
                
            }
            .navigationTitle("Hacker News")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}












#Preview {
    ContentView()
}
