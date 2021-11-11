//
//  MenuData.swift
//  KofeApp
//
//  Created by Alex Smith on 10.11.2021.
//

import Foundation
import SwiftUI

struct Category: Hashable, Codable {
    var id: Int
    var name: String
    var description: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
