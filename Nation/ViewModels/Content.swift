//
//  Content.swift
//  Nation
//
//  Created by James Goldston on 9/5/21.
//

import Foundation

class Content: ObservableObject {
    
    @Published var Nations = [Nation]()
    
    init() {
        getLocalData()
    }
    
    
    func getLocalData() {
        
        let jsonURL = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            
            let jsonData = try Data(contentsOf: jsonURL!)
            
            let jsonDecoder = JSONDecoder()
            
            let countries = try jsonDecoder.decode([Nation].self, from: jsonData)
            
            self.Nations = countries
            
        } catch {
            
            print(error)
            
        }
        
    }
    
}
