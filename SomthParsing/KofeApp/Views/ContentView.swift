//
//  ContentView.swift
//  KofeApp
//
//  Created by Alex Smith on 07.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewRouter: ViewRouter
    
    @State var showPopUp = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                switch viewRouter.currentPage {
                case .menu:
                    CategoryView(placeholder: "Поиск", text: "")
                case .user:
                    RegistrationView()
                        .padding()
                case .map:
                    VStack {
                        MapView()
                    }
                case .cart:
                    Spacer()
                    ScrollView {
                        Text("Корзина")
                    }
                    Spacer()
                }
                ZStack {
                    HStack {
//                        NavigationView {
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .menu, width: geometry.size.width/4, height: geometry.size.height/28, systemIconName: "list.bullet", tabName: "Меню")
//                        }
//                        NavigationView {
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .user, width: geometry.size.width/4, height: geometry.size.height/28, systemIconName: "person.crop.circle", tabName: "Профиль")
//                        }
//                        NavigationView {
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .map, width: geometry.size.width/4, height: geometry.size.height/28, systemIconName: "map", tabName: "Карта")
                        //                        }
//                        NavigationView {
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .cart, width: geometry.size.width/4, height: geometry.size.height/28, systemIconName: "cart", tabName: "Корзина")
//                        }
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/8)
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}
private func scale(thatFits size: CGSize) -> CGFloat {
    min(size.width, size.height) / (DrawingConstants.fontSize / DrawingConstants.fontScale)
}

private struct DrawingConstants {
    static let fontScale: CGFloat = 0.7
    static let fontSize: CGFloat = 32
}


struct TabBarIcon: View {
    
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    
    let width, height: CGFloat
    let systemIconName, tabName: String
    
    var body: some View {
        VStack (spacing: 0) {
            Spacer()
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
            Text(tabName)
                .padding(.top, 10)
                .font(.footnote)
            Spacer()
        }
        .padding(.horizontal, -4)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        .foregroundColor(viewRouter.currentPage == assignedPage ? .black : .gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
            .preferredColorScheme(.light)
    }
}
