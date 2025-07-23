//
//  ReservationForm.swift
//  Reservations
//
//  Created by APPLE on 9/25/24.
//

import SwiftUI

struct ReservationForm: View {
    
    @State var customerName: String = ""
    
    var body: some View {
        VStack {
            Text("Hello, People")
            TextField("Type your name", text: $customerName, onEditingChanged: { status in
                print(status)
            })
            .onChange(of: customerName) { oldstate, newstate in
                print(oldstate)
                print(newstate)
                
            }
            .onSubmit {
                print("Submitted")
            }
            .padding()
        }
    }
}

#Preview {
    ReservationForm()
}
