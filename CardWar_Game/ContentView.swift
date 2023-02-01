//
//  ContentView.swift
//  CardWar_Game
//
//  Created by abhinav srivastava on 13/01/22.
//

import SwiftUI

struct ContentView: View {
    //@State is used to change values of card
    @State private var PlayerCard="back"
    @State var CPUCard="back"
    @State private var Playerscore = 0
    @State var CPUscore = 0
    
    var body: some View {
        ZStack{
            Image("background")
        VStack{
            Spacer()
            Image("logo")
            Spacer()
            HStack{
                Spacer()
                Image(PlayerCard)
                Spacer()
                Image(CPUCard)
                Spacer()
            }
            Spacer()
            Button(action: {
                // Generate a random number between 2 and 14
                let prand=Int.random(in: 2...14)
                let crand=Int.random(in: 2...14)
                
                //Update the cards
                PlayerCard = "card" + String(prand)
                CPUCard = "card" + String(crand)
                
                //Update the Score
                //Playerscore+=1
                //CPUscore+=1
                if prand>crand
                {
                    Playerscore+=1
                }
                else if prand<crand
                {
                    CPUscore+=1
                }
                else
                {
                    Playerscore+=0
                    CPUscore+=0
                }
                
            }, label: {
                Image("dealbutton")
            })
           
            Spacer()
            HStack{
                Spacer()
                Text ("Player")
                    .font(.title)
                    .padding(10.0)
                Spacer()
                Text ("CPU")
                    .font(.title)
                    .padding(10.0)
                Spacer()
            }
            HStack{
                Spacer()
                Text (String(Playerscore))
                    .font(.title2)
                    .foregroundColor(Color.red)
                Spacer()
                Text (String(CPUscore))
                    .font(.title2)
                    .foregroundColor(Color.red)
                Spacer()
                
        }
            Spacer()
    }
}
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        
    }
}
}

