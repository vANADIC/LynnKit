//
//  Questions.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/23.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct Questions: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        VStack{
            ForEach(1...self.userData.rowLength, id: \.self){ i in
                HStack{
                    ForEach(1...3, id: \.self){ j in
                        ZStack{
                            Question()
                        }
                    }
                }
            }
        }.onAppear{
 
            self.userData.rowLength = self.userData.questionsMax.quotientAndRemainder(dividingBy: 3).quotient
            
            
        }
    }
}


struct QuestionsSelected: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack{
           ForEach(1...self.userData.rowLength, id: \.self){ i in
               HStack{
                   ForEach(1...3, id: \.self){ j in
                       ZStack{
                            QuestionStroke(id: j+i*3-3)
                       }
                   }
               }
           }
       }.onAppear{

           self.userData.rowLength = self.userData.questionsMax.quotientAndRemainder(dividingBy: 3).quotient
           
           
       }
    }
}




struct QuestionStroke: View {
    @EnvironmentObject var userData: UserData
    @State var id: Int
    var body: some View {
        
        GeometryReader{ geometry in
            if self.id == self.userData.selectedId {
                Rectangle()
                    .stroke(Color.blue)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        self.userData.selectedId = self.id
                    }
            }else{
                Rectangle()
                    .stroke(Color.white)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        self.userData.selectedId = self.id
                    }

            }
        }
        
    }
}

struct Question: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        GeometryReader{ geometry in
            Text(self.createText())
                .frame(height: geometry.size.width*1/CGFloat(self.userData.rowLength))
        }
        
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

struct Questions_Previews: PreviewProvider {
    static var previews: some View {
        Questions().environmentObject(UserData())
    }
}
