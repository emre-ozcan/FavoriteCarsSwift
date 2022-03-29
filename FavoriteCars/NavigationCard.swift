//
//  NavigationCard.swift
//  FavoriteCars
//
//  Created by Emre Özcan on 29.03.2022.
//

import SwiftUI

struct NavigationCard: View {
    let carModel:  CarModel
    var body: some View {
        NavigationLink(destination: {
            DetailView(carModel: carModel)
        }, label: {
            HStack{
                Image(carModel.imageName).resizable().frame(width: CGFloat(100), height: CGFloat(60))
                Text(carModel.name).bold().padding()
                Text(carModel.brand)
            }
        })
    }
}

struct NavigationCard_Previews: PreviewProvider {
    static var previews: some View {
        NavigationCard(carModel: volkswagen)
    }
}
