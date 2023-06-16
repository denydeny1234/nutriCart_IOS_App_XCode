//
//  ProductRow.swift
//  NutriCartProductsList
//
//  Created by Deny Deny on 09.04.2023.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var listManager: ListManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("€\(product.price)")
            }
            Spacer()
            
            Image(systemName: "trash")
                    .onTapGesture{
                        listManager.removeFromList(product: product)
                    }
                
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[3])
            .environmentObject(ListManager())
    }
}
