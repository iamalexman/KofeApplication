//
//  CategoryView.swift
//  KofeApp
//
//  Created by Alex Smith on 21.11.2021.
//

import SwiftUI

struct Categories: Identifiable {
    var id = UUID()
    var name = String()
    var image = String()
}

struct CategoryView: View {
    
    let categories: [Categories] = [Categories(name: "Горячие напитки", image: "hotDrinks"), Categories(name: "Холодные напитки", image: "coldDrinks"), Categories(name: "Еда", image: "foods")]
    
    var placeholder : String
    @State var text : String
    
    var body: some View {
        VStack (spacing: 0) {
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
                List(categories) { categorie in
                    NavigationLink(destination: MenuView()) {
                        VStack(alignment: .leading) {
                            Text(categorie.name)
                                .font(.system(size: 15))
                            Image(categorie.image)
                                .resizable()
                                .frame(height: 200)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
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
