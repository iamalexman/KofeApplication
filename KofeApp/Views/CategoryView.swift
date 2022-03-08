//
//  CategoryView.swift
//  KofeApp
//
//  Created by Alex Smith on 21.11.2021.
//

import UIKit
import SwiftUI

struct CategoryView: View {
    var placeholder : String
    @State var text : String
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(placeholder: "Поиск", text: "")
                    .padding(.all)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1))
                    .padding(.horizontal)
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(categories) {
                        categorie in NavigationLink (destination: MenuView().navigationBarHidden(false)) {
                            ZStack {
                                Image(categorie.image)
                                    .resizable()
                                    .frame(height: 200)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(10)
                                LinearGradient(colors: [.clear, .black], startPoint: .center, endPoint: .topLeading)
                                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                                HStack {
                                    VStack {
                                        Text(categorie.name)
                                            .font(.system(size: 35))
                                            .foregroundColor(.white)
                                            .fontWeight(.semibold)
                                            .multilineTextAlignment(.leading)
                                            .padding(.top, 5)
                                            .padding(.leading, 10)
                                        Spacer()
                                    }
                                    Spacer()
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .navigationBarTitle("Назад", displayMode: .inline)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(placeholder: "Поиск", text: "")
    }
}
