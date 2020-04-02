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
//        TabView{
//            _9table().tabItem({Text("99表")})
//            RandomDigit().tabItem({Text("读数字")})
//        }
        MenuBar().edgesIgnoringSafeArea(.top)
    }
}


struct MenuBar: View {
    @State var offset01 = -UIScreen.main.bounds.size.width/2+60
    @State var offset02 = -UIScreen.main.bounds.size.width/2+60
    @State var offset03: CGFloat = 0
    var body: some View{
        ZStack{
            VStack{
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                    .padding(.top, 100)
                Spacer()
                VStack(alignment: .center,spacing: 30){
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                }
                Spacer()
            }
            .frame(minWidth: 60, maxWidth: 120, minHeight: UIScreen.main.bounds.size.height, maxHeight: .infinity)
            .background(Color.black)
            .offset(x: -UIScreen.main.bounds.size.width/2+30)
            .zIndex(0)
            
            MenuView(title: "我的课程01").offset(x: self.offset01).zIndex(-1)
            MenuView(title: "我的课程02").offset(x: self.offset02).zIndex(-1)
            MenuView(title: "我的课程03").offset(x: self.offset03).zIndex(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone XS", "iPad mini4"], id: \.self){ device in
//
//        }
        ContentView()
    }
}

struct MenuView: View {
    var title: String
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Text(self.title).font(.system(size: 24))
                        Image(systemName: "chevron.down")
                    }
                    Button(action: {}, label: {
                        Text("查看所有课程").font(.system(size: 12))
                    })
                }
                Spacer()
                Image(systemName: "person").resizable()
                    .frame(width: 40, height: 40)
            }.padding(20)
            HStack(spacing: 20){
                VStack{
                    Text("课程一").fontWeight(.black)
                }
                VStack{
                    Text("课程二")
                        .fontWeight(.thin)
                }
                VStack{
                    Text("课程三").fontWeight(.thin)
                }
                VStack{
                    Text("课程四").fontWeight(.thin)
                }
            }
            .frame(width: UIScreen.main.bounds.size.width/2-40,height: 40)
            .background(Color.white)
            .cornerRadius(10)
            .offset(x: 20)
            Text("分类").font(.system(size: 12)).padding(20)
            VStack{
                HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 70,height: 70)
                            .cornerRadius(15)
                            .padding(7)
                    }
                    VStack(alignment: .leading){
                        Text("数字练习").foregroundColor(.white).font(.system(size: 18))
                            .padding(.bottom, 5)
                        Text("最新的课时内容是....")
                            .foregroundColor(Color.init(red: 189/255, green: 192/255, blue: 255/255))
                            .font(.system(size: 8))
                    }
                    Spacer()
                    Image(systemName: "ellipsis")
                        .foregroundColor(.white)
                        .padding()
                }
                .frame(width: UIScreen.main.bounds.size.width/2-40, height: 80)
                .background(Color.blue)
                .cornerRadius(15)
                .padding(.leading, 20)
                .padding(.bottom, 20)
                .shadow(radius: 10)
                HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 70,height: 70)
                            .cornerRadius(15)
                            .padding(7)
                    }
                    VStack(alignment: .leading){
                        Text("数字练习").foregroundColor(.black).font(.system(size: 18))
                            .padding(.bottom, 5)
                        Text("最新的课时内容是....")
                            .foregroundColor(Color.init(red: 189/255, green: 192/255, blue: 255/255))
                            .font(.system(size: 8))
                    }
                    Spacer()
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                        .padding()
                }
                .frame(width: UIScreen.main.bounds.size.width/2-40, height: 80)
                .background(Color.white)
                .cornerRadius(15)
                .padding(.leading, 20)
                .padding(.bottom, 20)
            }
        }
        .frame(minWidth: UIScreen.main.bounds.size.width/2, maxWidth: UIScreen.main.bounds.size.width/2, minHeight: UIScreen.main.bounds.size.height, maxHeight: .infinity)
        .background(Color.init(red: 246/255, green: 249/255, blue: 253/255))
        .cornerRadius(60)
        .offset(x: -UIScreen.main.bounds.size.width/4+60)
        .shadow(radius: 15)
    }
}
