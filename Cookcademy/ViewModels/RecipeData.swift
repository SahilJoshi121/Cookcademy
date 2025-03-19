//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Sahil Joshi on 3/18/25.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
