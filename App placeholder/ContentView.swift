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
            Color(red: 240.0/255.0, green: 235.0/255.0, blue: 223.0/255.0)
                .ignoresSafeArea()
            VStack {
                //spacing added to make the title centered
                Text("      Welcome to Hurricane Helper!")
                    .foregroundStyle(Color(red: 51.0/255.0, green: 65.0/255.0, blue: 85.0/255.0))
                    .font(Font.largeTitle.bold())
                //buttons to other pages
                NavigationLink(destination: Chatbot()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color(red: 133.0/255, green: 161.0/255.0, blue: 170.0/255.0))
                            .frame(width: 185.0, height: 30.0)
                        Text("Hurricane AI Chatbot")
                            .foregroundStyle(Color.white)
                    }
                }
                NavigationLink(destination: AlertReminders()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color(red: 133.0/255, green: 161.0/255.0, blue: 170.0/255.0))
                            .frame(width: 120.0, height: 30.0)
                        Text("See All Alerts")
                            .foregroundStyle(Color.white)
                        
                    }
                }
                NavigationLink(destination: ToDoList()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color(red: 133.0/255.0, green: 161.0/255.0, blue: 170.0/255.0))
                            .frame(width: 220.0, height: 30.0)
                        Text("Do before hurricane starts")
                            .foregroundStyle(Color.white)
                    }
                }
                NavigationLink(destination: Evacuation()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color(red: 133.0/255.0, green: 161.0/255.0, blue: 170.0/255.0))
                            .frame(width: 180.0, height: 30.0)
                        Text("See current shelters")
                            .foregroundStyle(Color.white)
                    }
                }
                //Work on UI, seems empty on the home page
                //similar to last year
                //find asethtic way to make home pages -> prob pinterest
                //or even athena awards other peoples, though not a
                //lot writing with swift
                //UI could take from the project made in TSG
                
                //maybe instead of button it becomes a thing at the bottom? -> will have to make it less plain then bc buttons will be lower
                
                
//                .toolbarBackground(.blue, for: .navigationBar)
//                .toolbarBackground(.visible, for: .navigationBar)
//                .foregroundColor(.white)
//                .buttonStyle(.borderedProminent)
//                .tint(Color(red: 149.0/255.0, green: 114.0/255.0, blue: 76.0/255.0))
//
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
