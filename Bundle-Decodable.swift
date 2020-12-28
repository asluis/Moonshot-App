//
//  Bundle-Decodable.swift
//  MoonShot App
//
//  Created by Luis Alvarez on 12/28/20.
//

import Foundation


extension Bundle{
    
    func decode<T: Codable>(_ file:String) -> T{
        
        guard let URL = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: URL) else{
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let decoded = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return decoded
    }  
}
