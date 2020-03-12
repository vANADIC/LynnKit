//
//  RandomDigit.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/12.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct RandomDigit: View {
    var body: some View {
        VStack{
            LineView(name: "个：", digit: 0, max_digit: 10, min_digit: 0)
            LineView(name: "十：", digit: 10, max_digit: 90, min_digit: 10)
            LineView(name: "百：", digit: 100, max_digit: 900, min_digit: 100)
            LineView(name: "千：", digit: 1000, max_digit: 9000, min_digit: 1000)
            LineView(name: "万：", digit: 10000, max_digit: 90000, min_digit: 10000)
        }
    }
}

struct LineView: View {
    var name: String
    @State var digit: Int
    @State var max_digit: UInt32
    @State var min_digit: UInt32
    
    var body: some View {
        HStack{
            Text(name)
            Text(String(self.digit))
                .frame(width: 60.0)
            Button(action: {self.digit = Int(arc4random_uniform(self.max_digit ) + self.min_digit)}, label: {Text("换一个")
                })
            Button(action: {
                SpeechStringText(string: String(self.digit), language: "zh-CN")
            }, label: {Text("中文")
                })
            Button(action: {
                SpeechStringText(string: String(self.digit), language: "en-US")
            }, label: {Text("英文")
                })
        }.padding()
    }
}

struct RandomDigit_Previews: PreviewProvider {
    static var previews: some View {
        RandomDigit()
    }
}

