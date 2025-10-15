//
//  ContentView.swift
//  App placeholder
//
//  Created by Nissi Sanju on 9/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
//                Color(red: 240.0/255.0, green: 235.0/255.0, blue: 223.0/255.0)
//                    .ignoresSafeArea()
                Spacer()
                Image("Hurricane")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 450, height: 840)
                    .ignoresSafeArea()
                VStack {
                    //spacing added to make the title centered
                    Text("Welcome to Hurricane Helper!")
//                        .font(.custom("Avenir Next", size: 32.0))
                        .foregroundStyle(Color(red: 51.0/255.0, green: 65.0/255.0, blue: 85.0/255.0))
                        .font(.system(size: 45.0))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .shadow(color: .white, radius: 15.0, x: 2, y: 2)
//                        .font(Font.largeTitle.bold())
                    
                    Spacer()
                        .frame(height: 10)
                    
//                    Image("Hurricane Helper")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 280.0, height: 280.0)
                    Text("Your guide for hurricane prepardness")
                        .foregroundStyle(.white)
                    //buttons to other pages
                    //changes in Chatbot, made the navigation link not work
                    Spacer()
                        .frame(height: 35)
                    NavigationLink(destination: ChatbotView(urlString: "https://landbot.site/v3/H-3167921-7V95U68ZRQ56ZF5D/index.html")) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10.0)
                                .fill(Color(red: 133.0/255, green: 161.0/255.0, blue: 170.0/255.0))
                                .frame(width: 270.0, height: 50.0)
                            Text(Image(systemName: "text.bubble")) + Text("  Hurricane AI Chatbot")
                                .foregroundStyle(Color.white)
                                .font(.system(size: 20.0))
                        }
                    }
                    NavigationLink(destination: AlertReminders()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10.0)
                                .fill(Color(red: 133.0/255, green: 161.0/255.0, blue: 170.0/255.0))
                                .frame(width: 270.0, height: 50.0)
                            Text(Image(systemName: "bell")) + Text("  See All Alerts")
                                .foregroundStyle(Color.white)
                                .font(.system(size: 20.0))
                            
                        }
                    }
                    NavigationLink(destination: ToDoList()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10.0)
                                .fill(Color(red: 133.0/255.0, green: 161.0/255.0, blue: 170.0/255.0))
                                .frame(width: 270.0, height: 50.0)
                            Text(Image(systemName: "list.bullet.circle")) + Text(" Tips Before The Hurricane")
                                .foregroundStyle(Color.white)
                                .font(.system(size: 20.0))
                        }
                    }
                    NavigationLink(destination: Evacuation()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10.0)
                                .fill(Color(red: 133.0/255.0, green: 161.0/255.0, blue: 170.0/255.0))
                                .frame(width: 270.0, height: 50.0)
                            Text(Image(systemName: "location.magnifyingglass")) + Text(" See current shelters")
                                .foregroundStyle(Color.white)
                                .font(.system(size: 20.0))
                        }
                    }
                    //Work on UI, seems empty on the home page
                    //similar to last year
                    //find asethtic way to make home pages -> prob pinterest
                    //or even athena awards other peoples, though not a
                    //lot writing with swift
                    //UI could take from the project made in TSG
                    
                    //maybe instead of button it becomes a thing at the bottom? -> will have to make it less plain then bc buttons will be lower
                    
                }
                .padding()
            }
        }
    }
}
#Preview {
    ContentView()
}
