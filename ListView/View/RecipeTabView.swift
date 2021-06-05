//
//  RecipeTabView.swift
//  ListView
//
//  Created by karanpreet singh sarao on 05/06/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView{
            
            RecipeFeaturedView()
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeList()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
            
        }.environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
