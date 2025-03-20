//
//  RecipeDetailView.swift
//  Cookcademy
//
//  Created by Sahil Joshi on 3/18/25.
//

import SwiftUI

struct RecipeDetailView: View {
    
    let recipe: Recipe
    
    @StateObject var recipeData = RecipeData()
    
    private let listBackgroundColor = AppColor.background
    private let listTextColor = AppColor.foreground
    
    var body: some View {
        VStack {
            HStack {
                Text("Author: \(recipe.mainInformation.author)")
                    .font(.subheadline)
                    .padding()
                Spacer()
            }
            
            HStack {
                Text(recipe.mainInformation.description)
                  .font(.subheadline)
                  .padding()
                Spacer()
            }
            
            List {
                Section(header: Text("Ingredients")) {
                  ForEach(recipe.ingredients.indices, id: \.self) { index in
                    let ingredient = recipe.ingredients[index]
                    Text(ingredient.description)
                  }
                  .listRowBackground(listBackgroundColor)
                }
                Section(header: Text("Instructions")) {
                    ForEach(recipe.directions.indices, id: \.self) { index in
                        let direction = recipe.directions[index]
                        HStack {
                            Text("\(index + 1). ").bold()
                            if direction.isOptional {
                                Text("\(direction.description) (Optional)")
                            } else {
                                Text(direction.description)
                            }
                        }
                    }
                    .listRowBackground(listBackgroundColor)
                }
            }
        }
        .foregroundColor(listTextColor)
        .navigationTitle(recipe.mainInformation.name)
    }
}

extension RecipeDetailView {
    var recipes: [Recipe] {
        recipeData.recipes
    }
    
    @State static var recipe = Recipe.testRecipes[0]
}



#Preview {
    NavigationView {
        RecipeDetailView(recipe: RecipeDetailView.recipe)
    }
}
