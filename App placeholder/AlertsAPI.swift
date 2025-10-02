//
//  AlertsAPI.swift
//  App placeholder
//
//  Created by Nissi Sanju on 9/29/25.
//

import Foundation


struct WeatherAlertResponse: Codable {
    let features: [Feature]
    
    struct Feature: Codable, Identifiable {
        let id: String
        let properties: Properties
    }
    
    struct Properties: Codable {
        let headline: String?
        let description: String?
    }
}


class AlertsViewModel: ObservableObject {
    @Published var alerts: [WeatherAlertResponse.Feature] = []
    
    func loadAlerts() {
        guard let url = URL(string: "https://api.weather.gov/alerts/active?area=FL") else { return }
        
        var request = URLRequest(url: url)
        request.setValue("application/geo+json", forHTTPHeaderField: "Accept")
        request.setValue("HurricaneHelperApp (nissiann@icloud.com)", forHTTPHeaderField: "User-Agent")
        
        URLSession.shared.dataTask(with: request) { data, _, error in
            if let data = data {
                do {
                    let decoded = try JSONDecoder().decode(WeatherAlertResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.alerts = decoded.features
                    }
                } catch {
                    print("Decoding error:", error)
                }
            }
        }.resume()
    }
}
