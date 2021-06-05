//
//  RecipeDetailView.swift
//  ListView
//
//  Created by karanpreet singh sarao on 04/06/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading){
                //MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                //MARK: Ingredients
                
                VStack(alignment: .leading){
                    Text("Indredients")
                        .font(.headline)
                        .padding([.top,.bottom],5)
                    ForEach(recipe.ingredients){r in
                        Text("- "+r.name)
                            .padding(.bottom,0)
                    }
                    
                }
                .padding(.leading)
                
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(.headline)
                        .padding([.top,.bottom],5)
                    ForEach(0..<recipe.directions.count,id: \.self){r in
                        Text(String(r+1)+". "+recipe.directions[r])
                            .padding(.bottom,3)
                    }
                }
                .padding(.leading)
                
            }
        }.navigationBarTitle(recipe.name)
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model=RecipeModel()
        RecipeDetailView(recipe: model.Recipes[0])
    }
}
