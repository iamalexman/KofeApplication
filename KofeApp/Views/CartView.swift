//
//  CartView.swift
//  KofeApp
//
//  Created by Alex Smith on 01.03.2022.
//

import SwiftUI

struct CartCard: View {
    @State var price: Int = 160
    @State var quontity: Int = 1
    
    var body: some View {
        Divider()
        NavigationLink (destination: ProductView(index: "KOFE")) {
            HStack {
                Image("hotDrinks")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 170, alignment: .center)
                    .clipped()
                    .cornerRadius(10)
                VStack {
                    HStack {
                        Text ("КАПУЧИНО")
                            .font(.title3)
                            .fontWeight(.semibold)
                        Spacer()
                        Button(action : {
                        //        self.showCancelDetails.toggle()
                        }) {
                            Image(systemName: "xmark")
                        }
                    }.padding(.leading)
                    Spacer()
                    HStack {
                        VStack {
                            HStack{
                                VStack {
                                    HStack {
                                        Text ("Большой")
                                        Spacer()
                                    }
                                    HStack{
                                        Text ("Маршмеллоу\nCироп")
                                            .multilineTextAlignment(.leading).lineLimit(3).padding(.trailing)
                                        Spacer()
                                    }
                                }
                            }
                            Spacer()
                            HStack {
                                Text ("\(price * quontity) руб.").font(.body).fontWeight(.semibold).multilineTextAlignment(.leading).padding(.trailing)
                                Spacer()
                            }
                        }
                        Spacer()
                    }
                    .padding(.leading)
                    HStack {
                        ZStack{
                            RoundedRectangle(cornerRadius: 5)
                                .opacity(0.08)
                                .frame(width: 210, height: 30)
                            HStack{
                                Button(action : {
                                    quontity -= 1;
                                }) {
                                    Image(systemName: "minus")
                                        .font(.headline)
                                        .foregroundColor(Color("LightColor"))
                                        .frame(width: 30, height: 30)
                                        .background(Color("DarkColor"))
                                        .cornerRadius(5.0)
                                }
                                Spacer()
                                Text ("\(quontity)")
                                    .font(.body)
                                    .fontWeight(.semibold)
                                Spacer()
                                Button(action : {
                                    quontity += 1;
                                }) {
                                    Image(systemName: "plus")
                                        .font(.headline)
                                        .foregroundColor(Color("LightColor"))
                                        .frame(width: 30, height: 30)
                                        .background(Color("DarkColor"))
                                        .cornerRadius(5.0)
                                }
                            }
                        }
                    }.padding(.leading)
                }
            }
            .navigationBarHidden(true)
            .navigationBarTitle("Назад", displayMode: .inline)
        }
        .buttonStyle(PlainButtonStyle())
    }
}


struct PromoCode: View {
    var cartPlaceholder: String
    @State var promo: String
    
    var body: some View {
        HStack {
            Image(systemName: "giftcard").foregroundColor(.gray)
            TextField(cartPlaceholder, text: $promo).foregroundColor(Color("DarkColor"))
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
        NavigationView {
            VStack {
                ScrollView {
                    CartCard()
                    CartCard()
                    CartCard()
                    Divider()
                }
                .navigationBarHidden(true)
                .navigationBarTitle("Назад", displayMode: .inline)
                PromoCode(cartPlaceholder: "ПРОМОКОД", promo: "")
                    .padding(.all)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1))
                    .padding(.top, 5)
                HStack {
                    Text("ОБЩАЯ СТОИМОСТЬ")
                    Spacer()
                    Text("160 руб.")
                }.padding(.vertical).font(.headline)
                HStack {
                    Button(action : {
                        self.showCancelDetails.toggle()
                    }) {
                        Spacer()
                        Text("ОТМЕНИТЬ")
                        Spacer()
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
                            .foregroundColor(Color("LightColor"))
                            .frame(width: 200, height: 50)
                            .background(Color("DarkColor"))
                            .cornerRadius(10.0)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
