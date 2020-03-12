//
//  99table.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/12.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct _9table: View {
    @State private var showLessTable = false
    
    
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Toggle(isOn: $showLessTable) {
                    Text("加减法切换")
                }
            }
            
            if showLessTable {
                LessTable()
            }else{
                PlusTable()
            }
        }.padding()
        
        
//        LessTable()
    }
}

struct LessTable: View {
    let digits = (1...9)
    @State private var showAnswer = true
    var body: some View {
        VStack{
            Toggle(isOn: $showAnswer) {
                Text("隐藏结果")
            }
            HStack(alignment: .top){
                ForEach(self.digits, id: \.self) { first in
                    VStack(alignment: .leading){
                        ForEach(self.digits, id: \.self) { second in
                            Group {
                                if first >= second {
                                    Button(action: {
                                        SpeechStringText(string: "\(first)减\(second)=\(first-second)  ", language: "zh-CN")
                                    }, label: {
                                        if self.showAnswer {
                                            Text("\(first)-\(second)=\(first-second)  ").font(.title)
                                        }else{
                                            Text("\(first)-\(second)=  ").font(.title)
                                        }
                                        })
                                }
                            }
                        }
                    }
                }
            }
        }
        
    }
}

struct PlusTable: View {
    let digits = (1...9)
    @State private var showAnswer = true
    var body: some View {
        VStack{
            Toggle(isOn: $showAnswer) {
                Text("隐藏结果")
            }
            HStack(alignment: .top){
                ForEach(self.digits, id: \.self) { first in
                    VStack(alignment: .leading){
                        ForEach(self.digits, id: \.self) { second in
                            Group {
                                if second <= first {
                                    Button(action: {
                                        SpeechStringText(string: "\(first)+\(second)=\(first+second)  ", language: "zh-CN")
                                    }, label: {
                                        if self.showAnswer {
                                            Text("\(first)+\(second)=\(first+second)  ").font(.title)
                                        }else{
                                            Text("\(first)+\(second)=  ").font(.title)
                                        }
                                        })
                                }
                            }
                        }
                    }
                    
                }
            }
        }
        
    }
}

struct _9table_Previews: PreviewProvider {
    static var previews: some View {
        _9table()
    }
}
