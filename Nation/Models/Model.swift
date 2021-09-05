//
//  Model.swift
//  Nation
//
//  Created by James Goldston on 9/5/21.
//

import Foundation

struct Nation: Decodable, Identifiable {
    
    var id: Int
    var name: String
    var attributes: Attributes
    var location: Location
    
}
struct Attributes: Decodable {
    
    var wealth: Int
    var population: Int
    var militaryMight: Int
    var diplomacyIntrest: Int
    
}
struct Location: Decodable {
    
    var continent: String
    var neighbors: [String]
    
}
