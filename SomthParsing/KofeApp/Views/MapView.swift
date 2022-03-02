//
//  MapView.swift
//  KofeApp
//
//  Created by Alex Smith on 07.11.2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    let adressesField = ["Березники, Карла Маркса, 48", "Усолье, Строгановская, 23"]
    let timeField = ["Часы работы: 08.00 - 22.00", "Часы работы: 09.00 - 20.00"]
    
    var annotationItems: [MyAnnotationItem] = [
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 59.404729, longitude: 56.802921)),
//        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 59.404000, longitude: 56.801941)),
    ]
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 59.404729, longitude: 56.802921),
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
                        }.frame(height: 400)
                            .padding(.bottom,10)
                        ScrollView {
                            VStack {
                                MapAdressView(adressField: adressesField.first ?? "", timeField: timeField.first ?? "")
                                Divider()
                                MapAdressView(adressField: adressesField.last ?? "", timeField: timeField.last ?? "")
                                Divider()
                                Button(action: {}) {
                                    Text("Подробнее")
                                        .font(.title2)
                                        .frame(width: 250, height: 60)
                                        .foregroundColor(.white)
                                        .background(.black)
                                        .cornerRadius(10.0)
                                        .padding(.top)
                                }
                            }
                        }.font(Font.system(size: DrawingConstants.fontSize))
                    }
                    .padding(.horizontal)
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
    }
}

