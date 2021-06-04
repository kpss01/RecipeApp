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
            
            Text("Featured tab")
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            ContentView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
            
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
