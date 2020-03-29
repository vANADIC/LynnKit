//
//  CardAnimation.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/26.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct CardAnimation: View {
    @State var size: CGFloat = 0.7
    @State var full: Bool = false
    @State var corner: CGFloat = 20
    @State var bColor: Color = .blue
    @State var shadowSize: CGFloat = 20
    var body: some View{
        GeometryReader{ geometry in
            Text("tap me")
                .frame(width: geometry.size.width*self.size, height: geometry.size.height*self.size)
                .background(self.bColor)
                .cornerRadius(self.corner)
                .shadow(radius: self.shadowSize)
                .onTapGesture {
                    if self.full {
                        self.full = false
                        self.size = 1
                        self.corner = 0
                        self.bColor = .white
                        self.shadowSize = -10
                    } else {
                        self.full = true
                        self.size = 0.7
                        self.corner = 20
                        self.bColor = .blue
                        self.shadowSize = 20
                    }
                    
            }
            .animation(.spring())
        }
        
    }
}

struct CardAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CardAnimation()
    }
}
