//
//  ContentView.swift
//  ListView
//
//  Created by karanpreet singh sarao on 01/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model=RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List(model.Recipes){ element in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: element),
                    label: {
                        HStack(spacing: 20.0){
                            Image(element.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width:50,height:50,alignment:.center)
                                .clipped()
                                .cornerRadius(5)
                            
                            Text(element.name).font(.subheadline).onTapGesture {
                                print(element.name)
                            }
                        }
                    })

            }.navigationBarTitle("All Recipe")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
