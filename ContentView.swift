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
    
    @State var showingNames = false

    
    var body: some View {
        
        NavigationView{
            List(missions){ mission in
                NavigationLink(destination: MissionView(mission: mission, astronauts: self.astronauts)){
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                    
                    VStack(alignment: .leading){
                        Text(mission.displayName)
                            .font(.headline)
                        Text(showingNames ? mission.formattedCrewDisplay : mission.formattedLaunchDate)
                    }

                }
            }
            .navigationBarItems(leading:
                Button(action: {
                    showingNames.toggle()
                }){
                    Text(showingNames ? "Show Dates" : "Show Names")
                        .padding(3)
                        .overlay(Capsule().stroke(lineWidth: 2.0))
                }
            )
            
            .navigationTitle("Moonshot")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
