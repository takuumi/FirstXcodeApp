//
//  MapView.swift
//  FirstApp
//
//  Created by Takumi Sakamoto on 2022/02/24.
//

import SwiftUI
import MapKit

struct Spot: Identifiable {
    let id = UUID()
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct MapView: View {
    let spotlist = [
        Spot(latitude: 34.678869, longitude: 135.530104)
    ]
    @State var region = MKCoordinateRegion(
        center : CLLocationCoordinate2D(
        latitude: 34.678869, longitude: 135.530104),
        latitudinalMeters: 1000.0,
        longitudinalMeters: 1000.0)

    var body: some View {
        Map(coordinateRegion: $region,
        annotationItems: spotlist,
            annotationContent: {spot in MapMarker(coordinate: spot.coordinate, tint: .orange)})
            .edgesIgnoringSafeArea(.bottom)
    }
}
    
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
