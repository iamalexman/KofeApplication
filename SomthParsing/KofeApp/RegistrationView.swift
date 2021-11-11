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
            Text("Hello, User!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            VStack {
                TextField("Username", text: $username)
                    .padding()
                    .background(grayBackground)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Password", text: $password)
                    .padding()
                    .background(grayBackground)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                TextField("Email", text: $email)
                    .padding()
                    .background(grayBackground)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                Button(action: {
                    
                }) {
                    Text("Sign Up!")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(accentColor)
                        .cornerRadius(15.0)
                }
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        RegistrationView()
//    }
//}
