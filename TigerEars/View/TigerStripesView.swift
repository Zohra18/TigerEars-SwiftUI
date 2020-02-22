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
            
            VStack {
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
                }
                .frame(height: 500)
                
                VStack {
                    TopRightStripeView()
                        .padding(.top, -100)
                        .rotationEffect(.degrees(-18))
                        .padding(.leading, -270)
                    LeftStripeView()
                        .padding(.top, -500)
                        .padding(.leading, -200)
                        .padding(.bottom, -100)
                    TopLeftStripeView()
                        .padding(.top, -450)
                        .padding(.leading, -30)
                    
                    ThinStraightStripeView()
                        .padding(.top, -200)
                }
                .frame(height: 500)
            }
            .frame(width: 414, height: 1000)

            
            
        }
        
    }
}

struct TigerStripesView_Previews: PreviewProvider {
    static var previews: some View {
        TigerStripesView()
    }
}

struct LeftStripeView: View {
    var body: some View {
        ZStack {
            HStack{
                Image(systemName: "arrowtriangle.right.fill")
                    .resizable()
                    .frame(width: 100, height: 500)
                    .foregroundColor(Color("darkStripe"))
                    .rotationEffect(.degrees(260))
                    .zIndex(2)
                
            }
            .shadow(color: Color("darkStripe"), radius: 10)
            .zIndex(2)
            .padding(.leading, -170)
        }
    }
}

struct TopLeftStripeView: View {
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: "bolt.horizontal.fill")
                .resizable()
                .frame(width: 100, height: 600)
                .foregroundColor(Color("darkStripe"))
                .rotationEffect(.degrees(275))
                .zIndex(2)
                .padding(.leading, -50)
                
                Image(systemName: "bolt.horizontal.fill")
                .resizable()
                .frame(width: 100, height: 600)
                .foregroundColor(Color("darkStripe"))
                .rotationEffect(.degrees(275))
                .zIndex(2)
                .padding(.leading, -50)
            }
            .shadow(color: Color("darkStripe"), radius: 10)
            .zIndex(2)
            .padding(.leading, -170)
        }
    }
}

struct TopRightStripeView: View {
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: "bolt.horizontal.fill")
                .resizable()
                .frame(width: 80, height: 500)
                .foregroundColor(Color("darkStripe"))
                    .rotationEffect(.degrees(275))
                .zIndex(3)
                .padding(.leading, 430)
            }
            .shadow(color: Color("darkStripe"), radius: 10)
            .zIndex(2)
//            .padding(.leading, 170)
        }
    }
}

struct StraightStripeView: View {
    var body: some View {
        ZStack {
            
            Color("darkStripe")
            .frame(width: 500, height: 100)
            .foregroundColor(Color("darkStripe"))
                .rotationEffect(.degrees(7))
            .zIndex(3)
            .shadow(color: Color("darkStripe"), radius: 10)
        }
        
    }
}

struct ThinStraightStripeView: View {
    var body: some View {
        ZStack {
            
            Color("darkStripe")
            .frame(width: 500, height: 60)
            .foregroundColor(Color("darkStripe"))
                .rotationEffect(.degrees(7))
            .zIndex(3)
            .shadow(color: Color("darkStripe"), radius: 10)
        }
        
    }
}
