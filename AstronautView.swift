//
//  AstronautView.swift
//  MoonShot App
//
//  Created by Luis Alvarez on 12/29/20.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut:Astronaut
    
    var body: some View {
        GeometryReader{ geo in
            ScrollView(.vertical){
                VStack(alignment: .center){
                    
                    Spacer(minLength: 25)
                    
                    Image(astronaut.id)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geo.size.width * 0.7)
                        .clipShape(Capsule())
                        .overlay(Capsule().stroke(Color.primary, lineWidth: 2))
                        .padding(.top)
                    
                    Text(astronaut.name)
                        .font(.largeTitle)
                        .bold()
                    
                    Spacer(minLength: 75)
                    
                    Text(astronaut.description)
                        .font(.headline)
                }
            }
        }
    }
}

struct AstronautView_Previews: PreviewProvider {
    
    static var astronauts:[Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautView(astronaut: astronauts[0])
    }
}
