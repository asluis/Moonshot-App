//
//  ContentView.swift
//  MoonShot App
//
//  Created by Luis Alvarez on 12/27/20.
//

import SwiftUI

struct ContentView: View {
    
    
    let astronauts:[Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")

    
    var body: some View {
        Text("\(missions.count)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
