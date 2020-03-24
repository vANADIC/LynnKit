//
//  Exercise.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/12.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct Exercise: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        ZStack{
            QuestionsSelected()
            Questions()
        }
    }
}




struct Exercise_Previews: PreviewProvider {
    static var previews: some View {
        Exercise().environmentObject(UserData())
        
//        QuestionView().environmentObject(UserData())
    }
}
