//
//  ArrowTigerStripes.swift
//  TigerEars
//
//  Created by Zohra Achour on 22/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import Foundation
import SwiftUI

// Single arrow stripe
struct LeftStripeView: View {
    
    @Binding var colorSwitch: Bool
    
    var body: some View {
        ZStack {
            HStack{
                Image(systemName: "arrowtriangle.right.fill")
                    .resizable()
                    .frame(width: 100, height: 500)
                    .foregroundColor(Color( colorSwitch ? "golden" : "darkStripe"))
                    .rotationEffect(.degrees(260))
                .zIndex(0)
                
            }
            .shadow(color: Color(colorSwitch ? "lightGolden" : "darkStripe"), radius: 10)
            .padding(.leading, -170)
        }
    }
}

// Single arrow stripe
struct RightStripeView: View {
    
    @Binding var colorSwitch: Bool
    
    var body: some View {
        ZStack {
            HStack{
                Image(systemName: "arrowtriangle.right.fill")
                    .resizable()
                    .frame(width: 80, height: 550)
                    .foregroundColor(Color( colorSwitch ? "golden" : "darkStripe"))
                    .rotationEffect(.degrees(80))
                .zIndex(0)
                
            }
            .shadow(color: Color(colorSwitch ? "lightGolden" : "darkStripe"), radius: 10)
            .padding(.leading, -170)
        }
    }
}
