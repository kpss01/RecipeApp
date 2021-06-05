//
//  ContentView.swift
//  ListView
//
//  Created by karanpreet singh sarao on 01/06/21.
//

import SwiftUI

struct RecipeList: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        NavigationView {
            VStack(alignment:.leading){
                Text("All Recipe")
                    .bold()
                    .font(.largeTitle)
                    .padding(.top,40)
                
                ScrollView{
                    LazyVStack(alignment:.leading){
                        ForEach(model.Recipes){ element in
                            
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
                                        
                                        Text(element.name)
                                            .foregroundColor(.black)
                                    }
                                })
                            
                        }
                        
                    }
                }
                
            }.navigationBarHidden(true)
            .padding(.leading)
        }
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList().environmentObject(RecipeModel())
    }
}
