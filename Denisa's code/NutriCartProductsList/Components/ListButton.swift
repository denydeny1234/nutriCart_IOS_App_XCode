//
//  ListButton.swift
//  NutriCartProductsList
//
//  Created by Deny Deny on 09.04.2023.
//

import SwiftUI

struct ListButton: View {
    var numberOfProducts = Int()
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "list.clipboard")
                .padding(.top, 5)
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 0.356, saturation: 0.414, brightness: 0.481))
                    .cornerRadius(50)
            }
        }
    }
}

struct ListButton_Previews: PreviewProvider {
    static var previews: some View {
        ListButton(numberOfProducts: 1)
    }
}
