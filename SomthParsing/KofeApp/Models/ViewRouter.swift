//
//  ViewRouter.swift
//  KofeApp
//
//  Created by Alex Smith on 07.11.2021.
//

import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .menu
}

enum Page {
    case menu
    case user
    case map
    case cart
}
