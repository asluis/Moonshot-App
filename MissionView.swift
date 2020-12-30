//
//  MissionView.swift
//  MoonShot App
//
//  Created by Luis Alvarez on 12/29/20.
//

import SwiftUI

struct MissionView: View {
    
    struct CrewMember {
        let role: String
        let astronaut: Astronaut
    }
    
    let astronauts: [CrewMember]

    
    let mission:Mission
    
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical){
                VStack{
                    Image(self.mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geo.size.width * 0.7)
                        .padding(.top)
                    
                    Text(self.mission.description)
                        .padding()
                    
                    Spacer(minLength: 25)
                }
            }
        }
        .navigationBarTitle(Text(self.mission.displayName), displayMode: .inline)
    }
}



struct MissionView_Previews: PreviewProvider {
    
    static let missions: [Mission] = Bundle.main.decode("missions.json")

    
    static var previews: some View {
        MissionView(mission: missions[0])
    }
}
