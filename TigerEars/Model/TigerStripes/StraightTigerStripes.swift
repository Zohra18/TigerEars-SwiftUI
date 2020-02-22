//
//  StraightTigerStripes.swift
//  TigerEars
//
//  Created by Zohra Achour on 22/02/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import Foundation
import SwiftUI

// Big straight line stripe
struct StraightStripeView: View {
    var body: some View {
        ZStack {
            
            Color("darkStripe")
            .frame(width: 500, height: 100)
            .foregroundColor(Color("darkStripe"))
                .rotationEffect(.degrees(7))
            .shadow(color: Color("darkStripe"), radius: 10)
        }
        
    }
}

// Medium straight line stripe
struct ThinStraightStripeView: View {
    var body: some View {
        ZStack {
            
            Color("darkStripe")
            .frame(width: 500, height: 60)
            .foregroundColor(Color("darkStripe"))
                .rotationEffect(.degrees(7))
            .shadow(color: Color("darkStripe"), radius: 10)
        }
        
    }
}
