//
//  ContentView.swift
//  KofeApp
//
//  Created by Alex Smith on 07.11.2021.
//

import SwiftUI

struct ContentView: View {
    //    @State private var showModal = false
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                switch viewRouter.currentPage {
                case .menu:
                    CategoryView(placeholder: "Поиск", text: "")
                case .user:
                    ProfileView()
                case .map:
                    VStack {
                        MapView()
                    }
                case .cart:
                    CartView()
                    Spacer()
                }
                Divider()
                ZStack {
                    HStack {
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .menu, width: geometry.size.width/4, height: geometry.size.height/28, systemIconName: "list.bullet", tabName: "Меню")
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .user, width: geometry.size.width/4, height: geometry.size.height/28, systemIconName: "person.crop.circle", tabName: "Профиль")
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .map, width: geometry.size.width/4, height: geometry.size.height/28, systemIconName: "map", tabName: "Карта")
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .cart, width: geometry.size.width/4, height: geometry.size.height/28, systemIconName: "cart", tabName: "Корзина")
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
        VStack{
            Spacer()
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
            if (viewRouter.currentPage == assignedPage) {
                Text(tabName)
                    .padding(.top, 5)
                    .font(.footnote)
            }
            Spacer()
        }
        .frame(width: width, height: height)
        .animation(.easeInOut, value: viewRouter.currentPage)
        .padding(.horizontal, -5)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }.foregroundColor(viewRouter.currentPage == assignedPage ? .themeColor : .gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
            .preferredColorScheme(.light)
    }
}
