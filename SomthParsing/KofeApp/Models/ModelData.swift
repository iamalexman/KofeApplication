//
//  ModelData.swift
//  KofeApp
//
//  Created by Alex Smith on 10.11.2021.
//

import Foundation
import UIKit
import SwiftUI

struct Categories: Identifiable {
    var id = UUID()
    var name = String()
    var image = String()
}

struct Goods: Identifiable {
    var id = UUID()
    var name = String()
    var image = String()
}

let categories: [Categories] = [
    Categories(name: "Горячие\nнапитки", image: "hotDrinks"),
    Categories(name: "Холодные\nнапитки", image: "coldDrinks"),
    Categories(name: "Еда", image: "foods"),
    Categories(name: "Сопутствующие\nтовары", image: "coffeeGoods") ]


let goods: [Goods] = [
    Goods(name: "Капучино", image: "hotDrinks"),
    Goods(name: "Американо", image: "coldDrinks"),
    Goods(name: "Латте", image: "foods"),
    Goods(name: "Флэт", image: "coffeeGoods") ]

struct GlowBorder: ViewModifier {
    var color: Color
    var lineWidth: Int
    
    func body(content: Content) -> some View {
        applyShadow(content: AnyView(content), lineWidth: lineWidth)
    }
    
    func applyShadow(content: AnyView, lineWidth: Int) -> AnyView {
        if lineWidth == 0 {
            return content
        } else {
            return applyShadow(content: AnyView(content.shadow(color: color, radius: 1)), lineWidth: lineWidth - 1)
        }
    }
}

extension View {
    func glowBorder(color: Color, lineWidth: Int) -> some View {
        self.modifier(GlowBorder(color: color, lineWidth: lineWidth))
    }
}
