//
//  SubCategoryView.swift
//  KofeApp
//
//  Created by Alex Smith on 22.11.2021.
//

import SwiftUI

struct SubCategoryView: View {
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.black)
                    .opacity(0.2)
                    .frame(width: 150, height: 150, alignment: .center)
                    .onTapGesture {
                        withAnimation()  {
                        }
                    }
                Text("Category")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.white)
            }
            Spacer()
            Text("ГОРЯЧИЕ НАПИТКИ")
                .padding()
            Spacer()
        }
    }
}

struct SubCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        SubCategoryView()
    }
}
