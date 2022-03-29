//
//  ContentView.swift
//  FavoriteCars
//
//  Created by Emre Özcan on 29.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(carList){ car in
                NavigationCard(carModel: car)
            }
            .navigationTitle(Text("Home"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
