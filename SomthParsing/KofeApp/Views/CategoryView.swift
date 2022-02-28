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
        
        VStack {
            HStack {
                Image(systemName: "magnifyingglass").foregroundColor(.secondary)
                TextField(placeholder, text: $text)
                if text != "" {
                    Image(systemName: "xmark.circle.fill")
                        .imageScale(.medium)
                        .foregroundColor(Color(.gray))
                        .padding(3)
                        .onTapGesture {
                            withAnimation {
                                self.text = ""
                            }
                        }
                }
            }
            .cornerRadius(3.0)
            .padding()
            NavigationView {
                ScrollView {
                    ForEach(categories) {
                        categorie in NavigationLink (destination: MenuView()){
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
                .navigationBarHidden(true)
                .navigationTitle("Назад")
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(placeholder: "Поиск", text: "")
    }
}
