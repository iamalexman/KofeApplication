//
//  ProductView.swift
//  KofeApp
//
//  Created by Alex Smith on 21.11.2021.
//

import SwiftUI

struct CupSize {
    var id = UUID()
    var selected: Bool
}

struct ProductView: View {
    @State var buttons = [CupSize(selected: false), CupSize(selected: false), CupSize(selected: false)]
    
    @State private var plusDetect = false
    @State private var syrupDetect = false
    @State private var marshmellowDetect = false
    @State private var creamDetect = false
    @State private var sDetect = false
    @State private var mDetect = false
    @State private var lDetect = false
    @State private var buyButton = false
    
    var index: String
    var body: some View {
        ScrollView () {
            ZStack{
            Image("hotDrinks")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 420, height: 400, alignment: .trailing)
                LinearGradient(colors: [.clear, .black], startPoint: .center, endPoint: .topLeading)
                .clipped()
                VStack{
                Spacer()
//                    Button(action: {
//                        self.plusDetect.toggle()}) {
//                        Text("+")
//                            .font(.headline)
//                            .foregroundColor(plusDetect == true ? .black : .white)
//                            .frame(width: 50, height: 50)
//                            .overlay(plusDetect == true ? RoundedRectangle(cornerRadius: 10)
//                                        .stroke(Color.white, lineWidth: 2) : RoundedRectangle(cornerRadius: 10)
//                                        .stroke(Color.white, lineWidth: 2))
//                            .background(plusDetect == true ? .white : .gray.opacity(0))
//                            .cornerRadius(10.0)
//                    }
                HStack{
                    Spacer()
//                    Button(action: {}) {
//                        Text(">")
//                            .font(.headline)
//                            .foregroundColor(.white)
//                            .frame(width: 30, height: 30)
//                            .overlay(RoundedRectangle(cornerRadius: 5)
//                            .stroke(Color.white, lineWidth: 1))
//                    }
                    Button(action: {
                        self.syrupDetect.toggle()
                    }) {
                        Text("СИРОП")
                            .font(.headline)
                            .foregroundColor(syrupDetect == true ? .black : .white)
                            .frame(width: 80, height: 30)
                            .overlay(syrupDetect ? RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.white, lineWidth: 2) : RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.white, lineWidth: 2))
                            .background(syrupDetect ? .white : .gray.opacity(0))
                            .cornerRadius(5.0)
                    }
                    Button(action: {
                        self.marshmellowDetect.toggle()
                    }) {
                        Text("МАРШМЕЛЛОУ")
                            .font(.headline)
                            .foregroundColor(marshmellowDetect == true ? .black : .white)
                            .frame(width: 140, height: 30)
                            .overlay(marshmellowDetect ? RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.white, lineWidth: 2) : RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.white, lineWidth: 2))
                            .background(marshmellowDetect ? .white : .gray.opacity(0))
                            .cornerRadius(5.0)
                    }
                    Button(action: {
                        self.creamDetect.toggle()
                    }) {
                        Text("СЛИВКИ")
                            .font(.headline)
                            .foregroundColor(creamDetect == true ? .black : .white)
                            .frame(width: 80, height: 30)
                            .overlay(creamDetect ? RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.white, lineWidth: 2) : RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.white, lineWidth: 2))
                            .background(creamDetect ? .white : .gray.opacity(0))
                            .cornerRadius(5.0)
                    }
                    }
                .padding()
                }
            }
            HStack {
                Text("КАПУЧИНО")
                    .font(.headline)
                Spacer()
                HStack {
                    Button(action: {
                        self.sDetect.toggle()
                    }) {
                        Text("S")
                            .font(.headline)
                            .foregroundColor(sDetect == true ? (Color("LightColor")) : (Color("DarkColor")))
                            .frame(width: 50, height: 50)
                            .overlay(sDetect ? RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("LightColor"), lineWidth: 2) : RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("DarkColor"), lineWidth: 2))
                            .background(sDetect ? (Color("DarkColor")) : .gray.opacity(0))
                            .cornerRadius(10.0)
                    }
                    Button(action: {
                        self.mDetect.toggle()
                    }) {
                        Text("M")
                            .font(.headline)
                            .foregroundColor(mDetect == true ? (Color("LightColor")) : (Color("DarkColor")))
                            .frame(width: 50, height: 50)
                            .overlay(mDetect ? RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("LightColor"), lineWidth: 2) : RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("DarkColor"), lineWidth: 2))
                            .background(mDetect ? (Color("DarkColor")) : .gray.opacity(0))
                            .cornerRadius(10.0)
                    }
                    .cornerRadius(10.0)
                    Button(action: {
                        self.lDetect.toggle()
                    }) {
                        Text("L")
                            .font(.headline)
                            .foregroundColor(lDetect == true ? (Color("LightColor")) : (Color("DarkColor")))
                            .frame(width: 50, height: 50)
                            .overlay(lDetect ? RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("LightColor"), lineWidth: 2) : RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("DarkColor"), lineWidth: 2))
                            .background(lDetect ? (Color("DarkColor")) : .gray.opacity(0))
                            .cornerRadius(10.0)
                    }
                }
            }
            .padding(.horizontal)
            Divider().padding(.horizontal)
            ScrollView (){
            Text("Капучино — самый известный кофейный напиток на основе эспрессо. В нём сохраняется баланс: чувствуется вкус эспрессо, но он не преобладает над вкусом молока. Это золотая середина между латте и флэт уайтом и хороший вариант для первого знакомства с кофе.")
                    .multilineTextAlignment(.leading)
                    .lineLimit(10)
                Spacer()
            }
            .padding(.horizontal)
            Button(action: {
                buyButton.toggle()
                lDetect.toggle()
                creamDetect.toggle()
            }) {
                HStack{
                    if (lDetect == true && buyButton == false) {
                    Text("Добавить в корзину").padding()
                        Spacer()
                    Text("160 руб.").padding()
                    }
                    else if (buyButton == false && lDetect == false) {
                        Text("Выберите напиток")
                    }
                    else {
                        Text("Добавлено").padding()
                    }
                }
                    .font(.headline)
                    .foregroundColor(Color("LightColor"))
                    .frame(width: 350, height: 50)
                    .background(Color("DarkColor"))
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
