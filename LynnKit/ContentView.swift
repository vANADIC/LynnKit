//
//  ContentView.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/12.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            _9table().tabItem({Text("99表")})
            RandomDigit().tabItem({Text("读数字")})
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
