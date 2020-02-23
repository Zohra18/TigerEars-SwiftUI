//
//  MainView.swift
//  TigerEars
//
//  Created by Zohra Achour on 21/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @State var animationAmount: CGFloat = 1
    @State private var isRecording: Bool = false
    
    // we always use this syntax in order to declare a View
    var body: some View {
        
        // ZStack allow to stack components on top of one another
        ZStack {
            // background of our View
            LinearGradient(gradient: Gradient(colors: [Color("darkBrown"), Color("darkOrange"), Color("mainOrange"), Color("lightOrange")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            // VStack gather our components on a vertical axis
            VStack {
                
                Text("TAP TO RECORD")
                    .foregroundColor(.white)
                    .font(.custom("MajorStripe", size: 60))
                    .fontWeight(.light)
                    .shadow(color: Color(.white).opacity(0.7), radius: 20)
                    .padding()
                
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .frame(width:30, height: 30)
                    .foregroundColor(.white)
                    .padding(.bottom, 50)
                    .padding(.top, -30)
    
                
            }// end of VStack
                .frame(width: 400, height: 0, alignment: .center)
                .zIndex(2)
                .padding(.top, -110)
            
            // Button made from the ButtonView
            ButtonView(animationAmount: animationAmount, buttonPressed: isRecording)
                .zIndex(0)
        }// end of ZStack
    }// end of body
}// end of MainView

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
