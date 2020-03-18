//
//  TestUI.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/17.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct TestUI: View {
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                Circle()
                    .foregroundColor(Color.white)
                    .shadow(radius: geometry.size.width * 0.1)
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                
                
            }
        }
            
        
        
    }
}

struct TestUI_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color("background")
                .edgesIgnoringSafeArea(.all)
            TestUI()
            
        }
        
        
    }
}
