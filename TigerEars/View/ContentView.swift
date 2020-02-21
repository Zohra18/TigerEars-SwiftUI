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
    
    @State private var animationAmount: CGFloat = 1
    @State private var isRecording: Bool = false
    
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
                
                Button(action: {
                    print("Button pressed")
                    self.isRecording.toggle()
                    
                    if self.isRecording == false {
                        print("Recording paused")
                        self.animationAmount = 1
                    }
                    else {
                        print("Recording")
                        self.animationAmount += 1
                    }
                    
                }, label: {
                    Image(systemName: "mic.fill")
// Customization for the button itself
                        .resizable()
                        .frame(width: 40, height: 60, alignment: .center)
                        .padding(40)
                        .background(Color("lightOrange"))
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        
// Customization for the circle after tapping the button
                        .overlay(
                            Circle()
                                .stroke(Color("lightOrange"), lineWidth: 2)
                                .scaleEffect(animationAmount)
                                .opacity(Double(2 - animationAmount))
                                .animation(
                                    Animation.easeInOut(duration: 1.5)
                                    .repeatCount(6, autoreverses: true)
                            )
                    )
                })
                    .padding(.top, 40)
                    .padding(20)
            }// end of VStack
        }// end of ZStack
    }// end of body
}// end of MainView










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
