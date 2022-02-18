//
//  CategoryView.swift
//  KofeApp
//
//  Created by Alex Smith on 21.11.2021.
//

import SwiftUI

struct CategoryView: View {
    @ObservedObject var data = ReadData()
    
    var body: some View {
        
        List(data.menuResponse){ product in
            
            VStack {
                
                Text(product.category)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.gray)
                
                HStack{
                    Text("product.category")
                        .font(.title3)
                        .foregroundColor(Color.red)
                    
                    Spacer()
                }
            }
        }
    }
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
