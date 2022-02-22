//
//  RegistrationView.swift
//  KofeApp
//
//  Created by Alex Smith on 05.11.2021.
//

import SwiftUI

struct RegistrationView: View {
    @State var username = ""
    @State var password = ""
    @State var email = ""
    
    var accentColor = Color.black
    var grayBackground = Color.gray.opacity(0.2)
    
    var body: some View {
        VStack {
            Image("Kofe")
                .resizable(resizingMode: .stretch)
                .frame(width: 200, height: 200)
                .scaleEffect()
                .shadow(color: .black, radius: 20, x: 5, y: 5)
//                .padding(.bottom, 30)
                .padding(.top, 40)
            
            Text("Привет, кофеман!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            VStack {
                TextField("Имя / Телефон", text: $username)
                    .padding()
                    .background(grayBackground)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Пароль", text: $password)
                    .padding()
                    .background(grayBackground)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                Spacer()
                Button(action: {
                }) {
                    Text("Войти")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(accentColor)
                        .cornerRadius(15.0)
                    
                }.padding()
                HStack {
                    Spacer()
                    Button(action : {
                    }) {Text("Зарегистрироваться")}
                    Spacer()
                    Button(action : {
                    }) {Text("Забыл пароль?")}
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
