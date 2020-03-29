//
//  LessonOne.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/28.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct LessonOne: View {
    @State var isOpen: Bool = false
    
    @State var frameSize: CGFloat = 0.4
    @State var postionSizeX: CGFloat = 0
    @State var postionSizeY: CGFloat = 0
    @State var cornerSize: CGFloat = 20
    @State var shadowSize: CGFloat = 20
    @State var bColor: Color = .blue
    
    var body: some View {
        GeometryReader{ geometry in
            VStack(alignment: .center){
                if self.isOpen{
                    RandomDigit()
                }else{
                    Image(systemName: "snow")
                }
                
                VStack(alignment: .leading){
                    HStack(alignment: .bottom){
                        Text("课件一").font(.largeTitle)
                        
                        if self.isOpen {Button(action: {
                            self.isOpen = false
                            self.frameSize = 0.4
                            self.bColor = .blue
                            self.cornerSize = 20
                            self.shadowSize = 20
                            self.postionSizeY = 0
                            self.postionSizeX = 0
                        }, label: {Text("返回").font(.subheadline)})}
                    }.offset(x: self.postionSizeX, y: self.postionSizeY)
                    
                    if !self.isOpen {Text("认识数字， 读数字").font(.subheadline)}
                }
            }.frame(minWidth: 0, maxWidth: geometry.size.width*self.frameSize, minHeight: 0, maxHeight: geometry.size.height*self.frameSize)
            
                .background(self.bColor)
                .cornerRadius(self.cornerSize)
                .shadow(radius: self.shadowSize)
                .animation(.spring())
                .onTapGesture {
                    self.isOpen = true
                    self.frameSize = .infinity
                    self.bColor = .orange
                    self.cornerSize = 0
                    self.shadowSize = 20
                    self.postionSizeY = -460
                    self.postionSizeX = -260
            }
        }
    }
}

struct LessonOne_Previews: PreviewProvider {
    static var previews: some View {
        LessonOne()
    }
}
