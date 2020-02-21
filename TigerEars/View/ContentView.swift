//
//  ContentView.swift
//  TigerEars
//
//  Created by Zohra Achour on 20/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainView()
    }
}


struct MainView: View {
    
    // obligé afin de pouvoir voir la View
    var body: some View {
        
        // on créer un index de profondeur
        ZStack {
            // fond d'écran
            LinearGradient(gradient: Gradient(colors: [Color("darkPurple"), Color("mainPurple"), Color("mainPink"), Color("lightPink")]), startPoint: .top, endPoint: .bottom)
                // ignore toute la Safe Area
                .edgesIgnoringSafeArea(.all)
            
            // englobe nos composants
            VStack {
                Text("TAP TO RECORD")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.light)
                
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .frame(width:30, height: 30)
                    .foregroundColor(.white)
                
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Image(systemName: "mic.fill")
                        .resizable()
                        .frame(width: 40, height: 60, alignment: .center)
                        .foregroundColor(.white)
                })
                    .padding(.top, 40)
                    .padding(30)
                
            }// fin de VStack
            
            
        }// fin de ZStack
        
    }// fin de body
}// fin de MainView










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
