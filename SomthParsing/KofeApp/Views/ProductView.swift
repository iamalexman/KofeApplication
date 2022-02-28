//
//  ProductView.swift
//  KofeApp
//
//  Created by Alex Smith on 21.11.2021.
//

import SwiftUI

struct ProductView: View {
    @Environment(\.presentationMode)
    var presentationMode:
    Binding<PresentationMode>
    var index: String
    var body: some View {
        ScrollView () {
            ZStack{
            Image("hotDrinks")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400, height: 400, alignment: .trailing)
                .clipped()
                VStack{
                Spacer()
                HStack{
                    Spacer()
                    Text("ДОБАВКИ")
                    .foregroundColor(.white)
                    Button(action: {}) {
                        Text("+")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 50, height: 50)
                            .background(.white)
                            .cornerRadius(10.0)
                        
                    }
                    .padding()
                    }
                }
            }
            HStack {
                Text("КАПУЧИНО")
                    .font(.headline)
                Spacer()
                HStack {
                    Button(action: {}) {
                        Text("S")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 50, height: 50)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2))
                            .cornerRadius(10.0)
                    }
                    Button(action: {}) {
                        Text("M")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 50, height: 50)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2))
                            .cornerRadius(10.0)
                    }
                    .cornerRadius(10.0)
                    Button(action: {}) {
                        Text("L")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 50, height: 50)
                            .background(.black)
                            .cornerRadius(10.0)
                    }
                }
            }
            .padding()
            Divider()
            HStack{
            Text("Капучино — самый известный кофейный напиток на основе эспрессо. В нём сохраняется баланс: чувствуется вкус эспрессо, но он не преобладает над вкусом молока. Это золотая середина между латте и флэт уайтом и хороший вариант для первого знакомства с кофе.")
                    .multilineTextAlignment(.leading)
                    .lineLimit(6)
                Spacer()
            }
            .padding()
            Button(action: {}) {
                Text("Добавить в корзину          160 руб.")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 50)
                    .background(.black)
                    .cornerRadius(10.0)
                    .padding(.bottom)
            }
        }
        .ignoresSafeArea()
    }
}


struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(index: "Kofe")
    }
}
