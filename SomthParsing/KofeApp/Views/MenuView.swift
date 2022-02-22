//
//  MenuView.swift
//  KofeApp
//
//  Created by Alex Smith on 07.11.2021.
//

import SwiftUI

struct RoundView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.black)
                .opacity(0.2)
                .frame(width: 150, height: 150, alignment: .center)
                .onTapGesture {
                    withAnimation()  {
                        //add some animation when click
                    }
                }
            Text("Категория")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.white)
        }
    }
}

struct RowView: View {
    var body: some View {
        HStack(spacing: 25) {
            ForEach(0...1, id: \.self) { _ in
                RoundView()
            }
            .padding(2)
        }
    }
}

struct MenuView: View {
    var body: some View {
        ScrollView {
            ForEach(0...5, id: \.self) { _ in
                RowView()
            }.listRowInsets(EdgeInsets())
        }
        .ignoresSafeArea()
        .padding(.top, 10)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
