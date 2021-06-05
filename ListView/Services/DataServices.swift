//
//  DataServices.swift
//  ListView
//
//  Created by karanpreet singh sarao on 04/06/21.
//

import Foundation


class DataService {
    
    
    static func getLocalData()->[Recipe]{
        
        
        let pathString=Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        let url=URL(fileURLWithPath: pathString!)
                    
        do{
            
            let data=try Data(contentsOf: url)
            
            let decoder=JSONDecoder()
            
            let RecipesData = try decoder.decode([Recipe].self, from: data)
            
            for r in RecipesData{
                
                r.id=UUID()
                
                for i in r.ingredients{
                    i.id=UUID()
                }
                
            }
            
            return RecipesData;
            
            
        }catch{
            
            print(error)
            
        }
        
        return [Recipe]()
        
    }
    
}
