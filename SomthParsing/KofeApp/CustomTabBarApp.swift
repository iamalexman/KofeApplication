//
//  CustomTabBarApp.swift
//  KofeApp
//
//  Created by Alex Smith on 05.11.2021.
//

import SwiftUI

@main
struct CustomTabBarApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: viewRouter)
        }
    }
}
