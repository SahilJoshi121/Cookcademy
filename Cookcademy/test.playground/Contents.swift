

func test() {
    let myIngredient = Ingredient(name: "Sugar", quantity: 2.0, unit: Ingredient.Unit.tbs)
    print(myIngredient.description) // "2 Tablespoons Sugar"
    let mySecondIngredient = Ingredient(name: "Salt", quantity: 1.0, unit: Ingredient.Unit.tsp)
    print(mySecondIngredient.description) // "1 Teaspoon Salt"
    let myThirdIngredient = Ingredient(name: "Apple", quantity: 2.0, unit: Ingredient.Unit.none)
    print(myThirdIngredient.description) // "2 Apples"
    let myFourthIngredient = Ingredient(name: "Banana", quantity: 1.0, unit: Ingredient.Unit.none)
    print(myFourthIngredient.description) // "1 Banana"
}

test()
