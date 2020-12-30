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
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var formattedCrewDisplay:String {
        var output:String = ""
        for i in 0..<crew.count {
            
            if i == crew.count - 1{
                output = output + " and \(crew[i].name.capitalized)"
                break;
            }
            
            output = output + "\(crew[i].name.capitalized), "
        }
        return output
    }
    
    
    var formattedLaunchDate:String {
        if let date = launchDate {
                let formatter = DateFormatter()
                formatter.dateStyle = .long
                return formatter.string(from: date)
            } else {
                return "Did not launch."
        }
        
    }
    
    var displayName:String {
        return "Apollo \(id)"
    }
    
    var image:String{
        return "apollo\(id)"
    }
    
}
