//
//  RecipeFeaturedView.swift
//  ListView
//
//  Created by karanpreet singh sarao on 06/06/21.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    @State var tabIndex:Int=0
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0.0){
            
            Text("Feature Recipe")
                .bold()
                .font(.largeTitle)
                .padding(.leading)
                .padding(.top,40)
            
            GeometryReader{ geo in
                TabView(selection:$tabIndex){
                    
                    ForEach(0..<model.Recipes.count){ index in
                        
                        if(model.Recipes[index].featured){
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.white)
                                VStack(spacing:0) {
                                    Image(model.Recipes[index].image)
                                        .resizable()
                                        .clipped()
                                        .aspectRatio(contentMode: .fill)
                                    Text(model.Recipes[index].name).padding(5)
                                }
                            }
                            .frame(width: geo.size.width-40, height: geo.size.height-100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .shadow(color:Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.6),radius: 10,x:-5,y:5)
                            .tag(index)
                        }
                        
                    }
                    
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode:.always))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode:.always))
            }
            
            VStack(alignment:.leading,spacing:5){
                Text("Preparation Time")
                    .font(.headline)
                Text(model.Recipes[tabIndex].prepTime)
                Text("Highlights")
                    .font(.headline)
               // Text(model.Recipes[index].)
                HStack{
                    ForEach(model.Recipes[tabIndex].highlights,id:\.self){ h in
                        Text(h)
                    }
                }
            }.padding([.leading,.bottom])

        }
        
        
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView().environmentObject(RecipeModel())
    }
}
