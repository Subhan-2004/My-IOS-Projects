//
//  ContentView.swift
//  Reservations
//  Learning this from Coursera App
//  Created by APPLE on 9/18/24.
//

import SwiftUI

struct ContentView: View {
    @State var personCount: Int = 1
    
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.5).ignoresSafeArea()
            VStack (spacing: 100) {
                Text("Little Lemon")
                    .font(.title)
                Stepper {
                    Text("Reservation for: \(personCount)")
                } onIncrement: {
                    personCount += 1
                } onDecrement: {
                    personCount = (personCount == 1) ? 1 : personCount - 1
                }
            }
            .padding()
            ReservationForm()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
