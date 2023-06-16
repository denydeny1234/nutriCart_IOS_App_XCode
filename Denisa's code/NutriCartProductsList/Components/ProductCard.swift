//
//  SwiftUIView.swift
//  NutriCart
//
//  Created by Deny Deny on 06.04.2023.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var listManager: ListManager
    
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                    .padding(.bottom, 80)
                 
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)€")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.white)
                .cornerRadius(15)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 1)
            
            Button{
                listManager.addToList(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.black)
                    .bold()
                    .background(.white)
                    .cornerRadius(50)
                    .shadow(radius: 3)
                    .padding()
            }
        }
     
    }
    }


struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product:productList[0])
            .environmentObject(ListManager())
    }
}
