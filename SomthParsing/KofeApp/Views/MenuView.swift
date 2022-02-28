//
//  MenuView.swift
//  KofeApp
//
//  Created by Alex Smith on 07.11.2021.
//

import SwiftUI

struct RoundView: View {
    var body: some View {
//        NavigationLink (destination: ProductView(index: "Kofe")) {
            ForEach(categories) {
                _ in NavigationLink (destination: ProductView(index: "Kofe")){
            ZStack {
                Image("hotDrinks")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.black)
                    .opacity(0.2)
                    .frame(width: 150, height: 150, alignment: .center)
                Text("Продукт")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
            }
            .navigationBarBackButtonHidden(false)
//            .navigationBarHidden(true)
            .navigationTitle("Назад")
    }
}

struct RowView: View {
    var body: some View {
        HStack(spacing: 20) {
            ForEach(0...1, id: \.self) { _ in
                RoundView()
            }
        }
    }
}

struct MenuView: View {
    var body: some View {
        ScrollView {
            ForEach(0...5, id: \.self) { _ in
                RowView()
            }
            .padding(.top, 50)
        }
        .ignoresSafeArea()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
