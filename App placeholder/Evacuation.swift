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
    
    @State private var shelters: [Shelter] = [
        Shelter(
            name: "Fasano Regional Hurricane Shelter",
            address: "11611 Denton Ave, Hudson, FL 34667",
            coordinate: CLLocationCoordinate2D(latitude: 27.6648, longitude: -81.5158),
            info: "Shelter in Pasco County, Florida",
        ),
        Shelter(
            name: "West Orange Recreation Center",
            address: "309 SW Crown Point Rd, Winter Garden, FL 34787",
            coordinate: CLLocationCoordinate2D(latitude: 28.568108, longitude:-81.566660),
            info: "Shelter in Orange County; Pet friendly"
        ),
        Shelter(
            name: "Palm Harbor University High",
            address: "1900 Omaha StPalm Harbor, FL 34683",
            coordinate: CLLocationCoordinate2D(latitude: 28.083701, longitude:-82.760102),
            info: "Shelter in Pinellas County; Pet friendly, Special needs friendly"
        ),
        Shelter(
            name: "Coral Glades High School",
            address: "2700 Sportsplex Dr, Coral Springs 33065",
            coordinate: CLLocationCoordinate2D(latitude: 26.97617, longitude:-82.09064),
            info: "Shelter in Broward County"
        ),
        Shelter(
            name: "Liberty Elementary School",
            address: "370 Atwater St., Port Charlotte",
            coordinate: CLLocationCoordinate2D(latitude: 26.2633793, longitude:-80.2952765),
            info: "Shelter in Charlotte County"
        ),
        Shelter(
            name: "Deep Creek Community Center",
            address: "11934 N US HWY 441, Lake City, FL 32055",
            coordinate: CLLocationCoordinate2D(latitude: 30.3574888, longitude:-82.6181475),
            info: "Shelter in Columbia County"
        ),
        Shelter(
            name: "Global Learning Academy",
            address: "100 North P Street Pensacola, Florida 32505",
            coordinate: CLLocationCoordinate2D(latitude: 30.413802, longitude: -87.242689),
            info: "Shelter in Escambia County"
        )
    ]
    
    @State private var cameraPosition: MapCameraPosition = .region(MKCoordinateRegion (
        center:CLLocationCoordinate2D(latitude: 27.93866, longitude: -84.014924),
        span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 10.0)
    ))
    
    
    var body: some View {
        ZStack {
            Map(position: $cameraPosition) {
                ForEach(shelters) { shelter in
                    Annotation(shelter.name, coordinate: shelter.coordinate) {
                        ZStack {
                            Image(systemName: "mappin.circle.fill")
                                .font(.title)
                                .foregroundStyle(Color.red)
                        }
                        .onTapGesture {
                            if let url = URL(string: "https://maps.apple.com/?ll=\(shelter.coordinate.latitude),\(shelter.coordinate.longitude)&q=Shelter") {
                                UIApplication.shared.open(url)
                            }
                        }
                    }
                }
            }
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
