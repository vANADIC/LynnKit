//
//  ExerciseSetting.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/20.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct ExerciseSetting: View {
    @State var show: Bool = true
    var body: some View {
        GeometryReader{ geometry in
            NavigationView{
                Text("this is setting view")
            }
            .navigationBarTitle(Text("设置"))
            .frame(width: geometry.size.width*0.8)
            .cornerRadius(20)
            .shadow(radius: 10)
            .offset(x: self.show ? -geometry.size.width*0.1 : -geometry.size.width)
            .animation(.spring())
            
        }
    }
}

struct ExerciseSetting_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseSetting()
    }
}
