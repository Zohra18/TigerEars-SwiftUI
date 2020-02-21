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
    
    @State var animationAmount: CGFloat = 1
    @State var isRecording: Bool = false
    
    // we always use this syntax in order to declare a View
    var body: some View {
        
        // ZStack allow to stack components on top of one another
        ZStack {
            // background of our View
            LinearGradient(gradient: Gradient(colors: [Color("darkBrown"), Color("darkOrange"), Color("mainOrange"), Color("lightOrange")]), startPoint: .top, endPoint: .bottom)
                // ignore toute la Safe Area
                .edgesIgnoringSafeArea(.all)
            
            // VStack gather our components on a vertical axis
            VStack {
                Text("TAP TO RECORD")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.light)
                
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .frame(width:30, height: 30)
                    .foregroundColor(.white)
                    .padding(.bottom, 50)
                
// Button made from the ButtonView
                ButtonView(animationAmount: animationAmount, isRecording: isRecording)
                
            }// end of VStack
        }// end of ZStack
    }// end of body
}// end of MainView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
