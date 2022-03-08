//
//  MapView.swift
//  KofeApp
//
//  Created by Alex Smith on 07.11.2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    
//    @Environment(\.colorScheme) var colorScheme: ColorScheme
    let adressesField = ["Березники, Карла Маркса, 48", "Усолье, Строгановская, 23"]
    let timeField = ["Часы работы: 08.00 - 22.00", "Часы работы: 09.00 - 20.00"]
    
    var annotationItems: [MyAnnotationItem] = [
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 59.404129, longitude: 56.802021)),
//        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 59.404000, longitude: 56.801941)),
    ]
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 59.404129, longitude: 56.802021),
        latitudinalMeters: 650,
        longitudinalMeters: 650
    )
    
    var body: some View {
        VStack {
            VStack {
                VStack {
                    VStack {
                        Map(coordinateRegion: $region,
                            annotationItems: annotationItems) {item in
                            MapPin(coordinate: item.coordinate)
                        }
                            .ignoresSafeArea()
                            .frame(height: 400)
                        ScrollView {
                            VStack {
                                MapAdressView(adressField: adressesField.first ?? "", timeField: timeField.first ?? "")
                                MapAdressView(adressField: adressesField.last ?? "", timeField: timeField.last ?? "")
                                Button(action: {
                                    
                                }) {
                                    Text("Подробнее")
                                        .font(.title2)
                                        .frame(width: 250, height: 60)
                                        .foregroundColor(Color("LightColor"))
                                        .background(Color("DarkColor"))
                                        .cornerRadius(10.0)
                                        .padding(.top, 10)
                                }
                            }
                        }.font(Font.system(size: DrawingConstants.fontSize))
                    }
                }
            }
        }
    }
    struct DrawingConstants {
        static let fontScale:CGFloat = 50
        static let fontSize: CGFloat = 30
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
//            .environment(\.colorScheme, .dark)
    }
}

