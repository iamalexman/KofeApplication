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

class ReadData: ObservableObject {
    
    @Published var products = [Product] ()
    @Published var category = [Category] ()
    var menuResponse: [Product] = load("CategoryData.json")
    var categoryResponce: [CategoryResponce] = load("CategoryData.json")
    
    init() {
        guard let path = Bundle.main.url(forResource: "CategotyData", withExtension: "json") else { return }
        do {
            let data = try Data(contentsOf: path)
            //            DispatchQueue.main.async {
            self.menuResponse = try JSONDecoder().decode([Product].self, from: data)
            //            }
        } catch {
            print("error:\(error)")
        }
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
