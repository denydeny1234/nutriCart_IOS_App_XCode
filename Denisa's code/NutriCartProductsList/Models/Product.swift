//
//  Product.swift
//  NutriCartProductsList
//
//  Created by Deny Deny on 09.04.2023.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Double
}

var productList = [Product(name: "Parsley", image: "parsley", price: 1.19)
                    ]
