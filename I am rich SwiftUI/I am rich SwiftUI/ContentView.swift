//
//  ContentView.swift
//  I am rich SwiftUI
//
//  Created by APPLE on 11/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(UIColor.red).ignoresSafeArea()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.green)
                Text("Hello, world!")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.green)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
