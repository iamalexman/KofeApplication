//
//  MapAdressView.swift
//  KofeApp
//
//  Created by Alex Smith on 17.02.2022.
//

import SwiftUI

struct MapAdressView: View {
    
    var adressField : String
    var timeField : String
    var body: some View {
        HStack {
            Text("📍")
                .frame(height: 80)
            VStack {
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
    }
}

struct MapAdressView_Previews: PreviewProvider {
    static var previews: some View {
        MapAdressView(adressField: "", timeField: "")
    }
}
