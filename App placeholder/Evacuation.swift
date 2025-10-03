//
//  Evacuation.swift
//  App placeholder
//
//  Created by Nissi Sanju on 10/2/25.
//

import SwiftUI
import MapKit

struct Evacuation: View {
    
    let florida = CLLocationCoordinate2D(
        latitude: 27.6648,
        longitude: -81.5158
    )
    let hudson = CLLocationCoordinate2D(
        latitude: 28.3904554,
        longitude: -82.6245256
    )
    let stormShelter = CLLocationCoordinate2D(
        latitude: 28.472288131713867,
        longitude: -81.59027862548828
    )
    
    var body: some View {
        Map() {
            Marker("Florida", coordinate: florida)
                .tint(.blue)
            Marker("Husdon Shelter", coordinate: hudson)
                .tint(.blue)
            Marker("Storm Shelter", coordinate: stormShelter)
        }
        .safeAreaInset(edge: .bottom) {
            NavigationLink(destination: ContentView()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(Color(red: 244.0/255.0, green: 239.0/255.0, blue: 235.0/255.0))
                        .frame(width: 100.0, height: 30.0)
                    Text("Go Back")
                        .foregroundStyle(Color(red: 95.0/255.0, green: 123.0/255.0, blue: 140.0/255.0))
                }
            }
        }
    }
}
#Preview {
    Evacuation()
}
