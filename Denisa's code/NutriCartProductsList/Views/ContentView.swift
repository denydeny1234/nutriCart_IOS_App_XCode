//
//  ContentView.swift
//  NutriCartProductsList
//
//  Created by Deny Deny on 09.04.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var listManager = ListManager()
    
    var columns = [GridItem(.adaptive(minimum: 1600), spacing:20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing:20) {
                    HStack {
                        ForEach(productList, id: \.id) { product in ProductCard(product: product)
                                .environmentObject(listManager)
                        }
                    }
                  
                }
                .padding()
            }
            .navigationTitle(Text("Greens"))
            .toolbar{
                NavigationLink{
                    ListView()
                        .environmentObject(listManager)
                } label: {
                    ListButton(numberOfProducts: listManager.products.count)
                }
               
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
