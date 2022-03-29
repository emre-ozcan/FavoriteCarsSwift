//
//  DetailView.swift
//  FavoriteCars
//
//  Created by Emre Özcan on 29.03.2022.
//

import SwiftUI

struct DetailView: View {
    let carModel: CarModel
    var body: some View {
        NavigationView{
            let bounds = UIScreen.main.bounds
            VStack{
                MapView(coordinate: carModel.coordinateLocation).frame(width: bounds.width, height: bounds.height * 0.3, alignment: .center).edgesIgnoringSafeArea(.top)
                Image(carModel.imageName).offset(x: 100, y: -bounds.height*0.4)
                VStack{
                    Text(carModel.brand).font(.largeTitle).bold()
                    Text(carModel.name).font(.title)
                }.padding().offset(y: -200)
                
                Spacer()
            }

        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(carModel: porsche)
    }
}
