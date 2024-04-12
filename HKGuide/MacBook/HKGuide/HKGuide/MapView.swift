//
//  MapView.swift
//  HKGuide
//
//  Created by [Redacted]
//

import SwiftUI
import MapKit

struct Landmark: Identifiable {
    let id = UUID()
    let name: String
    let location: CLLocationCoordinate2D
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 22.3193, longitude: 114.1694), latitudinalMeters: 10000, longitudinalMeters: 10000)
    @State private var landmarks = [
        Landmark(name: "The Peak", location: CLLocationCoordinate2D(latitude: 22.2680, longitude: 114.1536)),
        Landmark(name: "Avenue of Stars", location: CLLocationCoordinate2D(latitude: 22.3039, longitude: 114.1601)),
        Landmark(name: "HK Disneyland", location: CLLocationCoordinate2D(latitude: 22.3134, longitude: 114.04120 ))
    ]

    @State private var selectedLandmark: Landmark?
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: landmarks) {
            landmark in MapAnnotation(coordinate: landmark.location) {
                Button(action: {
                    self.selectedLandmark = landmark
                }) {
                    Image(systemName: "mappin.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.red)
                }
            }
        }
        .sheet(item: $selectedLandmark) {
            landmark in
            if landmark.name == "The Peak" {
                ThePeakView()
            } else if landmark.name == "Avenue of Stars" {
                AvOfStarsView()
            } else if landmark.name == "HK Disneyland" {
                DisneylandView()
            }
        }
    }
}

#Preview {
    MapView()
}
