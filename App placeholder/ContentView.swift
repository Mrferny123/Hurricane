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
            Color.blue
                .ignoresSafeArea()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Welcome to Hurricane Helper!")
                NavigationLink(destination: Chatbot()) {
                    Text("Hurricane AI Chatbot")
                }
                .foregroundColor(.white)
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 149.0/255.0, green: 114.0/255.0, blue: 76.0/255.0))
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
