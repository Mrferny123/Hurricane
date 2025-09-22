//
//  Chatbot.swift
//  App placeholder
//
//  Created by Nissi Sanju on 9/5/25.
//

import SwiftUI

struct Chatbot: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 251.0/255.0, green: 248.0/255.0, blue: 231.0/255.0)
                    .ignoresSafeArea()
                VStack {
                    Text("Welcome to the Hurricane Helper Chatbot")
                }
                .padding()
            }
        }
    }
}
#Preview {
    Chatbot()
}

