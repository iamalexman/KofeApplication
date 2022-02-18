//
//  MenuView.swift
//  KofeApp
//
//  Created by Alex Smith on 07.11.2021.
//

import SwiftUI

struct RoundView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.black)
                .opacity(0.2)
                .frame(width: 150, height: 150, alignment: .center)
                .onTapGesture {
                    withAnimation()  {
                    }
                }
            Text("Category")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.white)
            //            NavigationLink(destination: ProductView) {
            //                Text("PRODUCT")
            //            }
            
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

//struct SearchBar: View {
//    var body: some View {
//        TextField(placeholder, text: $text)
//    }
//}

struct MenuView: View {
    var placeholder : String
    @State var text : String
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(.white))
                    .opacity(0.5)
                    .frame(width: 350, height: 50, alignment: .center)
                    .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: 2)
                    .cornerRadius(5.0)
                HStack {
                    Image(systemName: "magnifyingglass").foregroundColor(.secondary)
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
                .padding()
                .cornerRadius(3.0)
                .opacity(1)
                .padding()
            }
            ScrollView {
                ForEach(0...5, id: \.self) { _ in
                    RowView()
                }.listRowInsets(EdgeInsets())
            }
        }
        //        .navigationTitle(Text("Основное меню"))
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(placeholder: "Поиск", text: "")
    }
}
