//
//  Chatbot.swift
//  App placeholder
//
//  Created by Nissi Sanju on 9/5/25.
//

//import SwiftUI
//import WebKit
//
////struct Chatbot: View {
//    var body: some View {
//        NavigationStack {
//            ZStack {
//                Color(red: 240.0/255.0, green: 235.0/255.0, blue: 223.0/255.0)
//                    .ignoresSafeArea()
//                VStack {
//                    Text("Welcome to the Hurricane Helper Chatbot")
//                        .foregroundStyle(Color(red: 133.0/255, green: 161.0/255.0, blue: 170.0/255.0))
//                        .font(.title)
//                        .bold()
//                    let htmlString: String! = "<html><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\"><title>Landbot | Convert a Landing Page into a Chatbot</title></head><body><script SameSite=\"None; Secure\" type=\"module\" src=\"https://cdn.landbot.io/landbot-3/landbot-3.0.0.mjs\"></script><script type=\"module\">var myLandbot = new Landbot.Fullpage({configUrl: \'https://storage.googleapis.com/landbot.site/v3/H-3167921-7V95U68ZRQ56ZF5D/index.json\',});</script></body></html>"
//                    webView.loadHTMLString(htmlString, baseURL: Bundle.main.bundleURL)
//                //need to go to openAI API and create/train a chatbot
//                    //figure out how to place it in the app
//                    //landbot time maybe??
//                }
//                .padding()
//            }
//        }
//    }
//}
//#Preview {
//    Chatbot()
//}
//

import UIKit
import WebKit


class ChatbotViewController: UIViewController {
    var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let htmlString: String! = """
//        <html>
//          <head>
//            <meta charset="UTF-8">
//            <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
//            <title>Landbot | Convert a Landing Page into a Chatbot</title>
//          </head>
//          <body>
//            <script SameSite="None; Secure" type="module" src="https://cdn.landbot.io/landbot-3/landbot-3.0.0.mjs"></script>
//            <script type="module">
//              var myLandbot = new Landbot.Fullpage({
//                configUrl: 'https://storage.googleapis.com/landbot.site/v3/H-3167921-7V95U68ZRQ56ZF5D/index.json',
//              });
//            </script>
//          </body>
//        </html>
//        """
        webView = WKWebView(frame: self.view.bounds)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(webView)
        
        if let url = URL(string: "https://landbot.site/v3/H-3167921-7V95U68ZRQ56ZF5D/index.html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
