//
//  ContentView.swift
//  war card game
//
//  Created by DANIEL HIGGINS on 7/19/23.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard:String = "card6"
    @State var aiCard = "card9"
    @State var pscore:Int = 0
    @State var aiscore = 0
    
    var body: some View {
        ZStack {
            
                Image("background-plain").resizable().ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(aiCard)
                    Spacer()
                }
                Spacer()
                
                Button{
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).foregroundColor(Color.white)
                        Text(String(pscore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("Ai").font(.headline).foregroundColor(Color.white)
                        Text(String(aiscore))
                            .font(.largeTitle).foregroundColor(Color.red)
                    }
                    Spacer()
                }
                Spacer()
                
                
            }
                
            
        }
        .padding()
    }
    
    func deal(){
        //randomize player card + ai
        var pcv = Int.random(in: 2...14)
        playerCard = "card" + String(pcv)
        
        var aicv = Int.random(in: 2...14)
        aiCard = "card" + String(aicv)
        
        //change score
        if pcv > aicv {
            pscore = pscore + 1
        } else if aicv > pcv {
            aiscore = aiscore + 1
        } else {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
