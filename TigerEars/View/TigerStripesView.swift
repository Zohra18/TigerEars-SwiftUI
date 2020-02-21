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
                Image(systemName: "bolt.fill")
                    .resizable()
                    .frame(width: 60, height: 190, alignment: .leading)
                    .rotationEffect(.degrees(90))
                    .zIndex(1)
                
                HStack{
                    Image(systemName: "bolt.fill")
                        .resizable()
                        .frame(width: 60, height: 290, alignment: .leading)
                        .rotationEffect(.degrees(290))
                        .zIndex(1)
                    
                    Image(systemName: "bolt.fill")
                        .resizable()
                        .frame(width: 60, height: 290, alignment: .leading)
                        .rotationEffect(.degrees(290))
                        .zIndex(2)
                    .padding(-50)
                }
                
                
                Image(systemName: "bolt.fill")
                    .resizable()
                    .frame(width: 60, height: 390, alignment: .leading)
                    .rotationEffect(.degrees(90))
                    .zIndex(1)
            }
            .frame(width: 414, height: 800, alignment: .center)
            
        }        
        
    }
}

struct TigerStripesView_Previews: PreviewProvider {
    static var previews: some View {
        TigerStripesView()
    }
}
