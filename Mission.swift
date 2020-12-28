//
//  Mission.swift
//  MoonShot App
//
//  Created by Luis Alvarez on 12/28/20.
//

import Foundation




struct Mission: Codable, Identifiable {
    struct CrewRole: Codable{
        let name:String
        let role:String
    }
    
    
    
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
    
    var displayName:String {
        return "Apollo \(id)"
    }
    
    var image:String{
        return "apollo\(id)"
    }
    
}
