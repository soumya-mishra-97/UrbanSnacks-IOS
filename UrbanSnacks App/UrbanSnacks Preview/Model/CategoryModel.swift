//
//  CategoryModel.swift
//  UrbanSnacks App
//
//  Created by Soumya Ranjan Mishra on 29/03/25.
//

import Foundation

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var categories: [CategoryModel] = [
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "choco", title: "Chcolates"),
    CategoryModel(icon: "waffles", title: "Waffles"),
    CategoryModel(icon: "toffee", title: "Toffee"),
]
