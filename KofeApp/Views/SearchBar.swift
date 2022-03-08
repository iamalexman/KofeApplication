//
//  SearchBar.swift
//  KofeApp
//
//  Created by Alex Smith on 01.03.2022.
//

import SwiftUI

struct SearchBar: View {
    
    var placeholder : String
    @State var text : String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
            TextField(placeholder, text: $text)
            if text != "" {
                Image(systemName: "xmark.circle.fill")
                    .imageScale(.medium)
                    .foregroundColor(Color(.gray))
                    .padding(3)
                    .onTapGesture {
                        withAnimation {
                            self.text = ""
                        }
                    }
            }
        }
//        .padding()
//        .overlay(RoundedRectangle(cornerRadius: 5)
//        .stroke(Color.gray, lineWidth: 1))
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(placeholder: "Поиск", text: "")
    }
}
