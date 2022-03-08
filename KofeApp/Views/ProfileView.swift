//
//  ProfileView.swift
//  KofeApp
//
//  Created by Alex Smith on 06.03.2022.
//

import SwiftUI
import MapKit

struct ProfileView: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.gray, Color("LightColor")]), startPoint: .center, endPoint: .bottom)
                    .padding(.top, -50)
                HStack {
                    Image("Kofe")
                        .resizable(resizingMode: .stretch)
                        .frame(width: 110, height: 110)
                        .padding(.top, -30)
                        .scaleEffect()
                        .shadow(color: .gray, radius: 10, x: 0, y: 0)
                    Spacer(minLength: 30)
                    VStack{
                        Spacer(minLength: 30)
                        Text("Добрый день,")
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding(.bottom, 5)
                        Text("Александр 🚩")
                            .font(.title)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding()
                    .padding(.top, -30)
                    Spacer()
                }
                .ignoresSafeArea()
                .frame(height: 190)
                .padding(.horizontal)
            }
            HStack {
                Button(action : {
                    self.showDetails.toggle()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 110, height: 110)
                            .foregroundColor(.white)
                            .opacity(0.5)
                            .shadow(color: .gray.opacity(0.7), radius: 5, x: 0, y: 5)
                        //                      RoundedRectangle (cornerRadius: 10)
                        //                          .frame(width: 110, height: 110)
                        //                          .foregroundColor(Color("TextColor"))
                        //                          .shadow(color: .gray.opacity(0.7), radius: 5, x: 0, y: 5)
                        Image(systemName: "creditcard")
                            .frame(width: 30, height: 30)
                            .opacity(0.9)
                            .font(.system(size: 40))
                            .padding()
                    }
                }
                .sheet(isPresented: $showDetails){
                    Text("DETAILS")
                }
                Spacer()
                Button(action : {
                    self.showDetails.toggle()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 110, height: 110)
                            .foregroundColor(.white)
                            .opacity(0.5)
                            .shadow(color: .gray.opacity(0.7), radius: 5, x: 0, y: 5)
                        //                            RoundedRectangle (cornerRadius: 10)
                        //                                .frame(width: 110, height: 110)
                        //                                .foregroundColor(Color("TextColor"))
                        //                                .shadow(color: .gray.opacity(0.7), radius: 5, x: 0, y: 5)
                        Image(systemName: "bubble.left")
                            .frame(width: 30, height: 30)
                            .opacity(0.9)
                            .font(.system(size: 40))
                            .padding()
                        Circle()
                            .fill(Color.red)
                            .frame(width: 20)
                            .padding(.bottom, 35)
                            .padding(.leading, 35)
                    }
                }
                .sheet(isPresented: $showDetails){
                    Text("DETAILS")
                }
                Spacer()
                Button(action : {
                    self.showDetails.toggle()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 110, height: 110)
                            .foregroundColor(.white)
                            .opacity(0.5)
                            .shadow(color: .gray.opacity(0.7), radius: 5, x: 0, y: 5)
                        //                            RoundedRectangle (cornerRadius: 10)
                        //                                .frame(width: 110, height: 110)
                        //                                .foregroundColor(Color("TextColor"))
                        //                                .shadow(color: .gray.opacity(0.7), radius: 5, x: 0, y: 5)
                        Image(systemName: "gear")
                            .frame(width: 30, height: 30)
                            .opacity(0.9)
                            .font(.system(size: 40))
                            .padding()
                    }
                }.sheet(isPresented: $showDetails){
                    Text("DETAILS")
                }
            }
            .padding(.horizontal)
            .padding(.top, -66)
            .buttonStyle(PlainButtonStyle())
            VStack{
                HStack{
                    Text("ИСТОРИЯ ПОКУПОК")
                    Spacer()
                    Button(action : {
                        self.showDetails.toggle()
                    }) {
                        Text("Подробнее")
                    }
                    .sheet(isPresented: $showDetails) {
                        Text("DETAILS")
                    }
                }
                .padding(.horizontal)
                .padding(.top, 5)
                ZStack {
                    RoundedRectangle (cornerRadius: 10)
                        .frame(height: 110)
                        .foregroundColor(.white)
                        .opacity(0.5)
                        .padding(.horizontal)
                        .shadow(color: .gray.opacity(0.7), radius: 5, x: 0, y: 5)
                    VStack {
                        HStack {
                            Divider().hidden()
                                .frame(width: 30)
                            HStack (alignment: .center){
                                Text("4")
                                    .font(.system(size: 70))
                                    .fontWeight(.semibold)
                                    .opacity(0.9)
                                Text("/8")
                                    .font(.system(size: 35))
                                    .fontWeight(.medium)
                                    .opacity(0.9)
                            }
                            Divider().hidden()
                                .frame(width: 2)
                            VStack{
                                HStack {
                                    ForEach(0...3, id: \.self) { _ in
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 5)
                                                .frame(width: 30, height: 30)
                                            Text("✔︎")
                                                .foregroundColor(Color("LightColor"))
                                                .font(.title3)
                                                .fontWeight(.medium)
                                        }
                                    }
                                }
                                HStack {
                                    ForEach(0...3, id: \.self) { _ in
                                        RoundedRectangle(cornerRadius: 5)
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(Color("DarkColor"))
                                            .opacity(0.2)
                                    }
                                }
                            }
                            Spacer()
                            VStack{
                                Image(systemName: "cup.and.saucer")
                                    .frame(width: 10, height: 80)
                                    .font(.system(size: 50))
                                    .opacity(0.9)
                                    .padding(.trailing)
                            }
                            Spacer()
                        }
                    }
                }
                .buttonStyle(PlainButtonStyle())
                HStack{
                    Text("СПЕЦИАЛЬНЫЕ ПРЕДЛОЖЕНИЯ")
                    Spacer()
                    Button(action : {
                        self.showDetails.toggle()
                    }) {
                        Text("Подробнее")
                    }
                    .sheet(isPresented: $showDetails) {
                        Text("DETAILS")
                    }
                }
                .padding(.horizontal)
                .padding(.top, 5)
            }
            VStack{
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(categories) {
                            categorie in NavigationLink (destination: MenuView().navigationBarHidden(true)) {
                                ZStack {
                                    Image(categorie.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 290, height: 290)
                                        .cornerRadius(10)
                                        .clipped()
                                    Text(categorie.name)
                                        .font(.system(size: 35))
                                        .foregroundColor(.white)
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.leading)
                                }
                            }
                        }
                        .padding(.leading)
                    }
                    .navigationBarHidden(true)
                    .navigationBarTitle("Назад", displayMode: .inline)
                }
                Spacer()
            }
        }
        Spacer()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
