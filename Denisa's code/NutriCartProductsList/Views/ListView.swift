//
//  ListView.swift
//  NutriCartProductsList
//
//  Created by Deny Deny on 09.04.2023.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listManager: ListManager
    
    var body: some View {
        ScrollView{
            if listManager.products.count > 0 {
                ForEach(listManager.products, id: \.id) {
                    product in ProductRow(product: product)
                }
                HStack{
                    Text("Your list total is:")
                    Spacer()
                    Text("€\(listManager.total).00")
                        .bold()
                }
                .padding()
            } else {
                Text("Your list is empty!")
            }
            
        }
        .navigationTitle(Text("My list"))
        .padding(.top)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(ListManager())
    }
}
