//
//  RecipeModel.swift
//  ListView
//
//  Created by karanpreet singh sarao on 02/06/21.
//

import Foundation

class RecipeModel:ObservableObject{
    
    @Published var Recipes=[Recipe]();
    
    init() {
        Recipes=DataService.getLocalData();
    }
    
    func addRecipe(){
        //Recipes.append(Recipe(name: "SecondDish", cuisine: "SecondCuisine"));
    }
    
}
