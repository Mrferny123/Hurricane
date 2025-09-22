//
//  AlertReminders.swift
//  App placeholder
//
//  Created by Nissi Sanju on 9/5/25.
//

import SwiftUI

struct AlertReminders: View {
    var body: some View {
        ZStack {
            Color(red: 251.0/255.0, green: 248.0/255.0, blue: 231.0/255.0)
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 10.0)
                        .fill(Color.blue)
                        .frame(width: 405.0, height: 170.0)
                        .ignoresSafeArea()
                        .position(x: 201, y:70)
            VStack {
                Text("Here are the most recent alerts for your area:")
                    .bold()
                    .padding()
                Spacer()
            }
            .padding()
        }
    }
}
#Preview {
    AlertReminders()
}

