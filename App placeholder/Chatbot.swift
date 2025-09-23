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
                Color(red: 240.0/255.0, green: 235.0/255.0, blue: 223.0/255.0)
                    .ignoresSafeArea()
                VStack {
                    Text("Welcome to the Hurricane Helper Chatbot")
                        .foregroundStyle(Color(red: 133.0/255, green: 161.0/255.0, blue: 170.0/255.0))
                        .font(.title)
                        .bold()
                //need to go to openAI API and create/train a chatbot
                    //figure out how to place it in the app
                }
                .padding()
            }
        }
    }
}
#Preview {
    Chatbot()
}

