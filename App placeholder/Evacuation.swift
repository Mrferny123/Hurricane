//
//  Evacuation.swift
//  App placeholder
//
//  Created by Nissi Sanju on 10/2/25.
//



import SwiftUI
import MapKit


//Helping to loop through locations + make it clickable
struct Shelter: Identifiable {
    let id = UUID()
    let name: String
    let address: String
    let coordinate: CLLocationCoordinate2D
    let info: String
}

struct Evacuation: View {
    
    //do more reseach on the different shelters, however, many only come when a hurricane is actually present, so maybe just put last years?
    //add maybe a card that user can click on to get more details
    
    let shelters: [Shelter] = [
        Shelter(
            name: "Fasano Regional Hurricane Shelter",
            address: "11611 Denton Ave, Hudson, FL 34667",
            coordinate: CLLocationCoordinate2D(latitude: 27.6648, longitude: -81.5158),
            info: "Shelter in Pasco County, Florida"
        )
    ]
    
    let florida = CLLocationCoordinate2D(
        latitude: 27.6648,
        longitude: -81.5158
    )
    let fasano = CLLocationCoordinate2D(
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
            Marker("Husdon Shelter", coordinate: fasano)
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



//Trying to make map icons clickable to see links to the address
//similar to the todo list page, but idk where to put it- maybe make a VStack before??

//List {
//    ForEach(shelters) { $shelter in
//        HStack {
//            Image(systemName: shelter.isChecked ? "checkmark.square": "square")
//                .onTapGesture {
//                    shelter.isChecked.toggle()
//                }
//            Text(shelter.name)
//
//        }
//    }
//}
//.scrollContentBackground(.hidden)
