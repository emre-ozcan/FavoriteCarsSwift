//
//  CarModel.swift
//  FavoriteCars
//
//  Created by Emre Özcan on 29.03.2022.
//

import Foundation
import MapKit

struct CarModel: Identifiable{
    let id = UUID()
    let name: String
    let brand: String
    let carLocation: CarLocation
    let imageName: String
    
    var coordinateLocation: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: carLocation.latitude, longitude: carLocation.longitude)
    }
    
    
}

struct CarLocation{
    let latitude: Double
    let longitude: Double
}

let volkswagen = CarModel(name: "Passat", brand: "Volkswagen", carLocation: CarLocation(latitude: 12.456, longitude: 45.678), imageName:"passat")
let skoda = CarModel(name: "Octavia", brand: "Skoda", carLocation: CarLocation(latitude:67.567, longitude: 90.456), imageName: "octavia")
let seat = CarModel(name: "Tarraco", brand: "Seat", carLocation: CarLocation(latitude: 78.967, longitude: 23.545), imageName: "tarraco")
let porsche = CarModel(name: "Taycan", brand: "Porsche", carLocation: CarLocation(latitude: 67.899, longitude: 34.567), imageName: "taycan")

let carList = [volkswagen,skoda,seat,porsche]
