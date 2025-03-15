//
//  Recipe.swift
//  Cookcademy
//
//  Created by Sahil Joshi on 3/15/25.
//

import Foundation

struct Recipe {
    var mainInformation: MainInformation
    var ingredients: [Ingredient]
    var directions: [Direction]
}
struct MainInformation {
    var name: String
    var description: String
    var author: String
    
    enum Category: String, CaseIterable {
        case breakfast = "Breakfast"
        case lunch = "Lunch"
        case dinner = "Dinner"
        case dessert = "Dessert"
        case other = "Other"
    }
}

struct Ingredient {
    var name: String
    var quantity: Double
    
    enum Unit: String, CaseIterable {
        case oz = "Ounce(s)"
        case g = "Gram(s)"
        case cups = "Cup(s)"
        case tbs = "Tablespoon(s)"
        case tsp = "Teaspoon(s)"
        case none = "No units"
    }
}

struct Direction {
    var description: String
    var isOptional: Bool
}
