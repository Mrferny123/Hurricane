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
            Color(red: 240.0/255.0, green: 235.0/255.0, blue: 223.0/255.0)
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color(red: 203.0/255.0, green: 217.0/255.0, blue: 228.0/255.0))
                        .frame(width: 405.0, height: 190.0)
                        .ignoresSafeArea()
                        .position(x: 201, y:70)
            VStack {
                Text("Here are the most recent alerts for your area: ")
                    .bold()
                    .font(.system(size: 20.0))
                    .foregroundStyle(Color(red: 95.0/255.0, green: 123.0/255.0, blue: 140.0/255.0))
                    .padding()
                //need to get user locations permissions
                //user location as variable
                //api from weather.gov and integrate it
                
                //maybe make map page if time
                Spacer()
            }
            .padding()
        }
    }
}
#Preview {
    AlertReminders()
}

