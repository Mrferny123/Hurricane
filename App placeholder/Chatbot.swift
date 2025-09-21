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
                Color.blue
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

