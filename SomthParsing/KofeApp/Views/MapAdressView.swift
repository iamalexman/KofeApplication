//
//  MapAdressView.swift
//  KofeApp
//
//  Created by Alex Smith on 17.02.2022.
//

import SwiftUI

struct MapAdressView: View {
    
    var adressField : String
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text(adressField)
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .padding(.minimum(1, 1))
                }
            }
            Spacer()
        }
        Text("Часы работы: 09.00 - 22.00")
            .font(.title2)
            .fontWeight(.medium)
            .multilineTextAlignment(.leading)
    }
}

struct MapAdressView_Previews: PreviewProvider {
    static var previews: some View {
        MapAdressView(adressField: "")
    }
}
