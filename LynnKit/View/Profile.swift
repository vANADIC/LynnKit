//
//  Profile.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/17.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        HStack{
            ZStack{
                Rectangle()
                    .frame(width: 72.5,height: 45)
                    .cornerRadius(22.5)
                    .offset(x: -22.5)
                    .foregroundColor(Color.white)
                    .shadow(radius: 5)
                Image(systemName: "list.dash")
                    
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(Color.black)
                    .offset(x: -12)
            }
            
            Spacer().frame(width: 20)
            VStack(alignment: .leading){
                Text("课件").font(.title)
                Text("练习次数：20").font(.subheadline)
            }
            Spacer()
            TestUI().frame(width: 45, height: 45)
            ZStack{
                Circle()
                    .frame(width: 45, height: 45)
                    .foregroundColor(Color.white)
                    .shadow(radius: 5)
                Image(systemName: "message")
                    .resizable()
                    .frame(width: 22.5, height: 22.5)
            }
            Spacer().frame(width:5)
            
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color("background")
                .edgesIgnoringSafeArea(.all)
            Profile()
        }
        
    }
}
