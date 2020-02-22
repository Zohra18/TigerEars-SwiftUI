//
//  TigerStripesView.swift
//  TigerEars
//
//  Created by Zohra Achour on 21/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct TigerStripesView: View {
    var body: some View {
        
        ZStack {
//            Global VStack
            VStack {
                
//                First half of the screen
                VStack {
                    StraightStripeView()
                        .padding(.top, 160)
                        .padding(.bottom, -220)
                    TopLeftStripeView()
                        .padding(.top, -5)
                    TopRightStripeView()
                        .padding(.top, -470)
                    LeftStripeView()
                    .padding(.top, -430)
                    .padding(.leading, -110)
                    ThinStraightStripeView()
                        .rotationEffect(.degrees(163))
                        .padding(.top, -230)
//                        .padding(.bottom, -200)
                    RightStripeView()
                    .padding(.leading, 300)
                    .padding(.top, -395)
                    .padding(.bottom, -280)
                }
                .frame(width: 414, height: 500)
                
//                Second half of the screen
                VStack {
                    LeftStripeView()
                        .padding(.top, -150)
                        .padding(.bottom, -300)
                        .padding(.leading, -220)
                    TopRightStripeView()
                        .padding(.top, -100)
                        .rotationEffect(.degrees(-18))
                        .padding(.leading, -270)
                    TopRightStripeView()
                        .rotationEffect(.degrees(-15))
                        .padding(.top, -450)
                        .padding(.leading, -700)
                    RightStripeView()
                        .padding(.top, -590)
                        .padding(.bottom, -300)
                        .padding(.leading, 800)
                    LightStraightStripeView()
                        .rotationEffect(.degrees(-4))
                        .padding(.top, -260)
                    TopLeftStripeView()
                        .padding(.top, -470)
                        .padding(.bottom, -500)
                    StraightStripeView()
                        .rotationEffect(.degrees(-10))
                        .padding(.top, -140)
                        .padding(.bottom, -30)
                }
                .frame(width: 414, height: 500)
                
            }// end of global VStack
            .frame(width: 414, height: 1000)

            
            
        }// end of ZStack
        
    }// end of body
}// end of View

struct TigerStripesView_Previews: PreviewProvider {
    static var previews: some View {
        TigerStripesView()
    }
}



