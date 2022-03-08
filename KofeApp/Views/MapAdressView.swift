//
//  MapAdressView.swift
//  KofeApp
//
//  Created by Alex Smith on 17.02.2022.
//

import SwiftUI

struct MapAdressView: View {
    @State var selectLocation = true
    var adressField : String
    var timeField : String
    
    var body: some View {
        Button(action: {
            self.selectLocation.toggle()
        }) {
            ZStack {
                RoundedRectangle (cornerRadius: 10)
                    .frame(height: 110)
                    .opacity(0.08)
                    .padding(.horizontal)
                    .shadow(color: selectLocation ? (Color("DarkColor")).opacity(0.2) : (Color("LightColor")).opacity(0.2), radius: selectLocation ? 5 : 0, x: 0, y: selectLocation ? 5 : 0)
                HStack {
                    Text("📍")
                        .frame(height: 70)
                    VStack (alignment: .leading) {
                        HStack {
                            Text(adressField)
                                .font(.title2)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                .padding(.minimum(1, 1))
                        }
                        Text(timeField)
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                }
                .padding(.leading, 25)
            }
            .padding(.bottom, 5)
            .padding(.top, 5)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct MapAdressView_Previews: PreviewProvider {
    static var previews: some View {
        MapAdressView(adressField: "", timeField: "")
    }
}
