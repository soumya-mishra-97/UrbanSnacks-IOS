//
//  ProductModel.swift
//  UrbanSnacks App
//
//  Created by Soumya Ranjan Mishra on 29/03/25.
//

import Foundation
import SwiftUICore

struct ProductModel: Identifiable {
    var id: UUID = .init()
    var name: String
    var category: String
    var image: String
    var color: Color
    var price: Int
}

var products: [ProductModel] = [
    ProductModel(name: "NATURE'S Protein Bar", category: "Choco", image: "Chocbar", color: Color(#colorLiteral(red: 0.6513005495, green: 0.5532436371, blue: 0.4677334428, alpha: 1)), price: 35),
    ProductModel(name: "BUDDHA\nBOWL", category: "Snacks", image: "BuddhaBowl", color: Color(#colorLiteral(red: 0.7916195989, green: 0.3504092991, blue: 0.2432057261, alpha: 1)), price: 49),
    ProductModel(name: "SHAMILI\nTEA", category: "Waffles", image: "Tea", color: Color(#colorLiteral(red: 0.9656717181, green: 0.6655595899, blue: 0.3119724989, alpha: 1)), price: 99),
    ProductModel(name: "SORAMAL\nPECRALE", category: "Juice", image: "SORAMAL_PECRALE", color: Color(#colorLiteral(red: 0.8901398778, green: 0.2978815734, blue: 0.5159702897, alpha: 1)), price: 30),
    ProductModel(name: "POPPA\nSørlands", category: "Snacks", image: "POPPASørlands", color: Color(#colorLiteral(red: 0.5983346105, green: 0.7615644932, blue: 0.65082407, alpha: 1)), price: 45),
    ProductModel(name: "YELLOW\nMAGGIK", category: "Snacks", image: "KraftNut", color: Color(#colorLiteral(red: 0.7157559991, green: 0.4882712364, blue: 0.322211355, alpha: 1)), price: 99),
    ProductModel(name: "VELVET\nPLUM", category: "Juice", image: "VelvetPlum", color: Color(#colorLiteral(red: 0.4991779327, green: 0.3299075365, blue: 0.4959246516, alpha: 1)), price: 35),
]
