//
//  ButtonView.swift
//  TigerEars
//
//  Created by Zohra Achour on 21/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    
// Need States in order to active and stop the Button action
// And an animation count in order to repeat the animation
    @State var animationAmount: CGFloat = 1
    @State var isRecording: Bool = false
    
    
    var body: some View {
        Button(action: {
            print("Button pressed")
            self.isRecording.toggle()
            //                    self.animationAmount += 1
            
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
                .padding(50)
                .background(Color("lightOrange"))
                .foregroundColor(.white)
                .clipShape(Circle())
                .shadow(color: Color("lightOrange"), radius: 10)
                
                // Customization for the circle after tapping the button
                .overlay(
                    Circle()
                        .stroke(Color("lightOrange"), lineWidth: 3)
                        .scaleEffect(animationAmount)
                        .opacity(Double(2 - animationAmount))
                        .animation(
                            Animation.spring()
                                .repeatForever(autoreverses: true)
                    )
            )
        })
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
