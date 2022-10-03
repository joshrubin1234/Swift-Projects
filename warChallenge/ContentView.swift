//
//  ContentView.swift
//  warChallenge
//
//  Created by Josh Rubin on 10/3/22.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card4"
    @State private var cpuCard = "card5"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
    
        ZStack{
            Image("background")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                        Spacer()
                    Image(playerCard)
                        Spacer()
                    Image(cpuCard)
                        Spacer()
                }
                Spacer()
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if cpuRand > playerRand{
                        cpuScore += 1
                    }
                    else if playerRand > cpuRand{
                        playerScore += 1
                    }
                   
                    
                    
                }, label: {
                    Image("dealbutton")
                })
        
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .font(.system(size: 30))
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .font(.system(size: 30))
                            
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .font(.system(size: 30))
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .font(.system(size: 30))
                        
                            
                       
                    }
                    Spacer()
                }
                Spacer()
            }
        
        
            
            
                
                
                
         
        }
    
        
        
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
