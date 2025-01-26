//
//  PlaceModel.swift
//  NearbyApp NLW
//
//  Created by Gabriel Lennon on 16/01/25.
//

import Foundation

struct Place: Decodable {
    let id: String
    let name: String
    let description: String
    let coupons: Int
    let latitude: Double
    let longitude: Double
    let address: String
    let phone: String
    let cover: String
    let categoryId: String
}
