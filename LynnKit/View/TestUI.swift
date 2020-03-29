//
//  TestUI.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/17.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct TestUI: View {
    @State var size: CGFloat = 0.7
    @State var full: Bool = false
    @State var corner: CGFloat = 20
    @State var bColor: Color = .blue
    @State var shadowSize: CGFloat = 10
    @State var postionX: CGFloat = 0
    @State var postionY: CGFloat = 0
    var body: some View{
        Text("hello")
            
            .frame(width: 800, height: 800)
            .offset(x: self.postionX, y: self.postionY)
            .background(Color.blue)
        .cornerRadius(15)
        .shadow(radius: 5)
            .animation(.spring())
            .onTapGesture {
                self.postionX = -100
                self.postionY = -100
                print("tap me")
        }
            
        
    }
}

struct TapView: View {
    
    var body: some View{
        Text("this is tap view")
            .frame(width: 150,height: 40)
        
        .modifier(mycard())
        .cornerRadius(20)
    }
}


struct mycard: ViewModifier{
    func body(content: Content) -> some View {
        content
            .background(Color.blue)
        .cornerRadius(5)
        .shadow(radius: 5)
        
    }
    
}


struct TestUI_Previews: PreviewProvider {
    static var previews: some View {
        TapView()
        
        
    }
}
