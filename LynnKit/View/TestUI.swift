//
//  TestUI.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/17.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct TestUI: View {

    @State var show: Bool = false
    var body: some View{
        HStack{
            ForEach(0...3, id: \.self) { _ in
                ZStack{
                    Rectangle().stroke(self.show ? Color.blue : Color.red)
                    MyOne()
                }
                
            }
        }.onTapGesture {
            self.show.toggle()
        }
    }
}

struct MyOne: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        Text("auto update :\(self.createText())")
    }
    
    
    private func createText() -> String {
        var result: String
        let number1 = " \(arc4random_uniform(self.userData.maxNumber)) "
        let number2 = " \(arc4random_uniform(self.userData.maxNumber)) "
        var symbol: String
        
        if self.userData.onlyPlusMethod {
            symbol = "+"
        }else{
            symbol = randomToggle() ? "+" : "-"
        }
        result = number1 + symbol + number2 + "="
        
        return result
    }
    
    private func randomToggle() -> Bool {
        var result: Bool = false
        let a = arc4random_uniform(2)
        if  a == 1 {
            result = true
        }
        return result
    }
}



struct TestUI_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color("background")
                .edgesIgnoringSafeArea(.all)
            TestUI()
            
        }.environmentObject(UserData())
        
        
    }
}
