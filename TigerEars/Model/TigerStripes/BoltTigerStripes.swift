//
//  TopTigerStripes.swift
//  TigerEars
//
//  Created by Zohra Achour on 22/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import Foundation
import SwiftUI

// Double bolt stripe
struct TopLeftStripeView: View {
    
    @Binding var colorSwitch: Bool
    
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: "bolt.horizontal.fill")
                .resizable()
                .frame(width: 100, height: 600)
                .foregroundColor(Color( colorSwitch ? "golden" : "darkStripe"))
                .rotationEffect(.degrees(275))
                .padding(.leading, -50)
                
                Image(systemName: "bolt.horizontal.fill")
                .resizable()
                .frame(width: 100, height: 600)
                .foregroundColor(Color( colorSwitch ? "golden" : "darkStripe"))
                .rotationEffect(.degrees(275))
                .padding(.leading, -50)
            }
            .shadow(color: Color(colorSwitch ? "lightGolden" : "darkStripe"), radius: 10)
            .padding(.leading, -170)
        }
    }
}

// Single bolt stripe
struct TopRightStripeView: View {
    
    @Binding var colorSwitch: Bool
    
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: "bolt.horizontal.fill")
                .resizable()
                .frame(width: 80, height: 500)
                .foregroundColor(Color( colorSwitch ? "golden" : "darkStripe"))
                    .rotationEffect(.degrees(275))
                .padding(.leading, 430)
            }
            .shadow(color: Color(colorSwitch ? "lightGolden" : "darkStripe"), radius: 10)
            .zIndex(2)
        }
    }
}
