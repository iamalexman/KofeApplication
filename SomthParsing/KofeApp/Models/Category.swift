//
//  MenuData.swift
//  KofeApp
//
//  Created by Alex Smith on 10.11.2021.
//

import Foundation
import SwiftUI

struct Product: Codable, Identifiable {
    var id: Int
    var name: String
    var shortName: String
    var category: String
    var subcategory: String
    var description: String
    //    var categoryImage: String
    //    var isFavorite: Bool
    //    var isFeatured: Bool
    
    //    private var imageName: String
    //    var image: Image {
    //        Image(imageName)
    //    }
    enum CodingKeys: CodingKey {
        case id
        case name
        case shortName
        case category
        case subcategory
        case description
    }
}

struct CategoryResponce: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var shortName: String
    var category: String
    var subCategory: String
    var description: String
    var categoryImage: String
}

//protocol MenuRepresentable {
//    var name: String { get }
//    var image: String { get }
//    var shortName: String { get }
//    var category: Category { get }
//    var description: String { get }
//    var isFavorite: Bool { get }
//    var isFeatured: Bool { get }
//    var id: Int { get }
//}

