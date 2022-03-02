//
//  CartView.swift
//  KofeApp
//
//  Created by Alex Smith on 01.03.2022.
//

import SwiftUI

struct CartCard: View {
    var body: some View {
        Divider()
        HStack {
            Image("hotDrinks")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 110, alignment: .trailing)
                .clipped()
                .cornerRadius(10)
            VStack {
                HStack {
                    Text ("КАПУЧИНО")
                    Spacer()
                    Image(systemName: "xmark")
                }.padding(.leading)
                Spacer()
                HStack {
                    VStack {
                        HStack{
                            Text ("Большой, маршмеллоу")
                                .multilineTextAlignment(.leading).padding(.trailing)
                            Spacer()
                        }
                        HStack {
                            Text ("160 руб.").multilineTextAlignment(.leading).padding(.trailing)
                            Spacer()
                        }
                    }
                    Spacer()
                }.padding(.horizontal)
                HStack {
                    Image(systemName: "plus")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .background(.black)
                        .cornerRadius(5.0)
                    Spacer()
                    Text ("1")
                    Spacer()
                    Image(systemName: "minus")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .background(.black)
                        .cornerRadius(5.0)
                }
                .frame(width: 210, height: 30)
                .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(Color.gray, lineWidth: 0.5))
            }
        }
    }
}


struct PromoCode: View {
    var cartPlaceholder: String
    @State var promo: String
    
    var body: some View {
        HStack {
            Image(systemName: "giftcard").foregroundColor(.gray)
            TextField(cartPlaceholder, text: $promo).foregroundColor(.black)
            if promo != "" {
                Image(systemName: "xmark.circle.fill")
                    .imageScale(.medium)
                    .foregroundColor(Color(.gray))
                    .padding(3)
                    .onTapGesture {
                        withAnimation {
                            self.promo = ""
                        }
                    }
            }
        }
    }
}

struct CartView: View {
    
    @State private var showCancelDetails = false
    
    var body: some View {
        VStack {
            ScrollView {
                CartCard()
                CartCard()
                CartCard()
//                CartCard()
//                CartCard()
//                CartCard()
                Divider()
            }
            PromoCode(cartPlaceholder: "ПРОМОКОД", promo: "")
                .padding(.all)
                .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1))
                .padding(.top, 5)
            HStack {
                Text("ОБЩАЯ СТОИМОСТЬ")
                Spacer()
                Text("185 руб.")
            }.padding(.vertical)
            HStack {
                Button(action : {
                    self.showCancelDetails.toggle()
                }) {
                    Text("ОТМЕНИТЬ")
                }.sheet(isPresented: $showCancelDetails){
                    Text("Вы точно хотите отменить все покупки?")
                    HStack{
                        Button(action: {}) {
                            Text("ДА")
                                .padding()
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 150, height: 50)
                                .background(.black)
                                .cornerRadius(10.0)
                                .padding(.horizontal)
                        }
                        Button(action: {}) {
                            Text("НЕТ")
                                .padding()
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 150, height: 50)
                                .background(.black)
                                .cornerRadius(10.0)
                                .padding(.horizontal)
                        }
                    }.padding()
                }
                Spacer()
                Button(action: {}) {
                    Text("ОПЛАТИТЬ")
                        .padding()
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(.black)
                        .cornerRadius(10.0)
                }
            }
        }.padding(.horizontal)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
