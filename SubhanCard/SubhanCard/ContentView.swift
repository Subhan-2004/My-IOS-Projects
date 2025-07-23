//
//  ContentView.swift
//  SubhanCard
//
//  Created by SUBHAN AHMED on 11/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.19, green: 0.2, blue: 0.82)
                .opacity(0.9)
                .ignoresSafeArea()
            VStack {
                Image("Subhan")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Subhan Ahmed")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundStyle(.white)
                Text("IOS App Developer")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+92 3362543271", imageName: "phone.fill")
                InfoView(text: "subhanahmed152@gmail.com", imageName: "envelope.fill")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(height: 40)
                .foregroundColor(.white)
            HStack{
                Image(systemName: imageName)
                    .foregroundColor(.blue)
                Text(text)
            }
        }
        .padding()
    }
}
