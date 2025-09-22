//
//  ContentView.swift
//  App placeholder
//
//  Created by Nissi Sanju on 9/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 251.0/255.0, green: 248.0/255.0, blue: 231.0/255.0)
                .ignoresSafeArea()
            VStack {
                Text("Welcome to Hurricane Helper!")
                NavigationLink(destination: Chatbot()) {
                    Text("Hurricane AI Chatbot")
                }
                    .foregroundColor(.white)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 255.0/255.0, green: 114.0/255.0, blue: 76.0/255.0))
                NavigationLink(destination: Chatbot()) {
                    Text("See All Alerts")
                }
                .foregroundColor(.white)
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 149.0/255.0, green: 114.0/255.0, blue: 76.0/255.0))
                
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
