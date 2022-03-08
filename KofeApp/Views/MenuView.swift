//
//  MenuView.swift
//  KofeApp
//
//  Created by Alex Smith on 07.11.2021.
//

import SwiftUI

struct RoundView: View {
    var body: some View {
        NavigationLink (destination: ProductView(index: "Kofe").navigationBarHidden(false)) {
            ZStack {
                Image("hotDrinks")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 180, alignment: .center)
                    .cornerRadius(10)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.black)
                    .opacity(0.2)
                    .frame(width: 180, height: 180, alignment: .center)
                Text("ТОВАР")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
        .navigationBarHidden(true)
        .navigationTitle("ГОРЯЧИЕ НАПИТКИ")
    }
}

struct RowView: View {
    var body: some View {
        HStack {
            ForEach(0...1, id: \.self) { _ in
                RoundView()
            }
        }
    }
}

struct MenuView: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            ForEach(0...5, id: \.self) { _ in
                RowView()
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
