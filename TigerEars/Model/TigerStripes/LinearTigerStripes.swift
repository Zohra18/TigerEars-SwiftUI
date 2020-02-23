//
//  LinearTigerStripes.swift
//  TigerEars
//
//  Created by Zohra Achour on 22/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import Foundation
import SwiftUI

// Big straight line stripe
struct StraightStripeView: View {
    
    @Binding var colorSwitch: Bool
    
    var body: some View {
        ZStack {
            
            Color(colorSwitch ? "golden" : "darkStripe")
                .frame(width: 500, height: 100)
                .rotationEffect(.degrees(7))
                .shadow(color: Color(colorSwitch ? "lightGolden" : "darkStripe"), radius: 10)
        }
        
    }
}

// Medium straight line stripe
struct ThinStraightStripeView: View {
    
    @Binding var colorSwitch: Bool
    
    var body: some View {
        ZStack {
            
            Color(colorSwitch ? "golden" : "darkStripe")
                .frame(width: 500, height: 60)
                .rotationEffect(.degrees(7))
                .shadow(color: Color(colorSwitch ? "lightGolden" : "darkStripe"), radius: 10)
        }
        
    }
}

// Light straight line stripe
struct LightStraightStripeView: View {
    
    @Binding var colorSwitch: Bool
    
    var body: some View {
        ZStack {
            Color(colorSwitch ? "golden" : "darkStripe")
                .frame(width: 500, height: 30)
                .rotationEffect(.degrees(7))
                .shadow(color: Color(colorSwitch ? "lightGolden" : "darkStripe"), radius: 10)
        }
        
    }
}
