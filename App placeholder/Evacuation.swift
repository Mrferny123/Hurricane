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
        ),
        Shelter(
            name: "Hilltop Elementary School",
            address: "2401 US-17, Wauchula, FL 33873",
            coordinate: CLLocationCoordinate2D(latitude: 27.5866793, longitude: -81.8203525),
            info: "Shelter in Hardee County"
        ),
        Shelter(
            name: "LaBelle Middle School",
            address: "8000 E Cowboy Way, LaBelle, FL 33935",
            coordinate: CLLocationCoordinate2D(latitude: 26.749635696411133, longitude: -81.36131286621094),
            info: "Shelter in Hendry County"
        ),
        Shelter(
            name: "Liberty High School",
            address: "4250 Pleasant Hill Rd, Kissimmee, FL 34746",
            coordinate: CLLocationCoordinate2D(latitude: 28.161511, longitude: -81.4432248),
            info: "Shelter in Osceola County"
        ),
        Shelter(
            name: "Dunbar High School",
            address: "3800 Edison Avenue Fort Myers, FL 33916",
            coordinate: CLLocationCoordinate2D(latitude: 26.6339, longitude: -81.842857),
            info: "Shelter in Lee County"
        ),
        Shelter(
            name: "Anderson Middle School",
            address: "7000 SE Atlantic Ridge Dr, Stuart, FL, 34997",
            coordinate: CLLocationCoordinate2D(latitude: 27.121293, longitude: -80.238894),
            info: "Shelter in Martin County"
        ),
        Shelter(
            name: "Key West High School",
            address: "2100 Flagler St. Key West, FL",
            coordinate: CLLocationCoordinate2D(latitude: 24.5528123, longitude: -81.7834859),
            info: "Shelter in Monroe County; only for cat 1 or 2, otherwise evacuate"
        ),
        Shelter(
            name: "Davidson Middle School",
            address: "6261 Old Bethel Rd Crestview, FL 32536",
            coordinate: CLLocationCoordinate2D(latitude: 30.7931336, longitude: -86.5619452),
            info: "Shelter in Okaloosa County"
        ),
        Shelter(
            name: "Belleair Elementary",
            address: "1156 Lakeview Rd, Clearwater",
            coordinate: CLLocationCoordinate2D(latitude: 27.9508329, longitude: -82.7888265),
            info: "Shelter in Pinellas County"
        ),
        Shelter(
            name: "Walter Caldwell Elementary School",
            address: "141 Dairy Rd, Auburndale, FL 33823",
            coordinate: CLLocationCoordinate2D(latitude: 28.072271, longitude: -81.776228),
            info: "Shelter in Polk County"
        ),
        Shelter(
            name: "Chipley High School",
            address: "1545, Brickyard Rd. Chipley, FL 32428",
            coordinate: CLLocationCoordinate2D(latitude: 30.764759, longitude: -85.55825),
            info: "Shelter in Washington County"
        )
    ]
    
    
    //make sure to double check these locations as sometimes, shelters may change
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
            VStack{
                Spacer()
                Text("Please make sure to double check these locations  as sometimes, shelters may change")
                    .foregroundStyle(Color(.black))
                    .background(Color.white)
            }
        }
    }
}
#Preview {
    Evacuation()
}
