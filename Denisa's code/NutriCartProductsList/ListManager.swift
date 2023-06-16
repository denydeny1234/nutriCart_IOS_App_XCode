//
//  ListManager.swift
//  NutriCartProductsList
//
//  Created by Deny Deny on 09.04.2023.
//

import Foundation

class ListManager: ObservableObject{
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Double = 0
    
    func addToList(product: Product){
        products.append(product)
        total += product.price
    }
    
    func removeFromList(product: Product){
        products = products.filter {
            $0.id != product.id
           
        }
        total -= product.price
    }
}
