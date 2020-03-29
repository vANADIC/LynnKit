//
//  ContentView.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/12.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var tests: CGFloat = 50
    var body: some View {
//        TabView{
//            _9table().tabItem({Text("99表")})
//            RandomDigit().tabItem({Text("读数字")})
//        }
        
        VStack{
            Spacer(minLength: self.tests)
            Profile().padding()
            ZStack{
                LessonOne()
                    .gesture(DragGesture().onChanged({ lesson in
                        print(lesson.translation.height)
                    }))
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            .environment(\.colorScheme, .light)
    }
}
