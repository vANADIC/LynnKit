//
//  CircleSybmol.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/17.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct CircleSybmol: View {
    var symbolName: String
    @State var symColor: String
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                Circle()
                    .foregroundColor(Color.white)
                    .shadow(radius: geometry.size.width * 0.1)
                
                Image(systemName: self.symbolName)
                    .resizable()
                    .frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                    .foregroundColor(Color(self.symColor))
            }
        }
    }
}

struct CircleSybmol_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            CircleSybmol(symbolName: "person.circle",symColor: "testc").frame(width: 80, height: 80)
        }
        
    }
}
