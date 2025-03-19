//
//  ContentView.swift
//  Cookcademy
//
//  Created by Sahil Joshi on 3/15/25.
//

import SwiftUI

struct RecipeListView: View {
    
    @StateObject var recipeData = RecipeData()
    
    var body: some View {
        
        List {
            ForEach(recipes) { recipe in
                NavigationLink(recipe.mainInformation.name, destination: RecipeDetailView(recipe: recipe))
            }
        }
        .navigationTitle(navigationTitle)
    }
    
}

extension RecipeListView {
    var recipes: [Recipe] {
        recipeData.recipes
    }
    
    var navigationTitle: String {
        "All Recipes"
    }
}

#Preview {
    NavigationView {
        RecipeListView()
    }
}

