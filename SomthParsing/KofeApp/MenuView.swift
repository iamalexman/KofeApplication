//
//  MenuView.swift
//  KofeApp
//
//  Created by Alex Smith on 07.11.2021.
//

import SwiftUI

struct RoundView: View {
    
    //    var category: Category
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.black)
                .opacity(0.2)
                .frame(width: 150, height: 150, alignment: .center)
                .onTapGesture {
                    withAnimation()  {
                        //                        willChange.send(self) some code
                    }
                }
            Text("Category")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.white)
        }
    }
}

struct RowView: View {
    var body: some View {
        HStack(spacing: 30) {
            ForEach(0...1, id: \.self) { _ in
                RoundView()
            }
            .padding(2)
        }
    }
}

struct MenuView: View {
    @State var search = ""
    var body: some View {
        VStack {
            TextField("Search", text: $search)
                .padding()
                .background(.gray)
                .opacity(0.4)
                .cornerRadius(5.0)
                .padding()
            ScrollView {
                ForEach(0...5, id: \.self) { _ in
                    RowView()
                }.listRowInsets(EdgeInsets())
                //            List(categories) { category in RowView (category: category)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
