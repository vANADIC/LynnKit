//
//  UserData.swift
//  LynnKit
//
//  Created by 王旭超 on 2020/3/20.
//  Copyright © 2020 Rudaor. All rights reserved.
//

import Foundation
import Combine

final class UserData: ObservableObject {
    @Published var maxNumber: UInt32 = 10
    @Published var onlyPlusMethod: Bool = true
    @Published var selectedId: Int = 1
    @Published var questionsMax: Int = 9
    @Published var rowLength: Int = 1
    
    
    
}
