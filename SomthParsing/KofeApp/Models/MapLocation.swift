//
//  MapLocation.swift
//  KofeApp
//
//  Created by Alex Smith on 17.02.2022.
//

import SwiftUI
import MapKit

struct MyAnnotationItem: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
}

struct MapLocation: View {
    @State var coordinateRegion: MKCoordinateRegion = {
        var newRegion = MKCoordinateRegion()
        newRegion.center.latitude = 37.786996
        newRegion.center.longitude = -122.440100
        newRegion.span.latitudeDelta = 0.2
        newRegion.span.longitudeDelta = 0.2
        return newRegion
    }()
    var annotationItems: [MyAnnotationItem] = [
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 37.810000, longitude: -122.477450)),
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 37.786996, longitude: -122.419281)),
    ]
    var body: some View {
        VStack {
            Text("Hello, world!").padding()
            Map(coordinateRegion: $coordinateRegion,
                annotationItems: annotationItems) {item in
                MapPin(coordinate: item.coordinate)
            }
        }
    }
}



