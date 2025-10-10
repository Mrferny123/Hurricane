//
//  Chatbot.swift
//  App placeholder
//
//  Created by Nissi Sanju on 9/5/25.
//


import SwiftUI
import WebKit

struct ChatbotView: UIViewRepresentable {
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
