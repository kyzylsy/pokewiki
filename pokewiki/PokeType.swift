//
//  PokeType.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/16.
//  Copyright © 2016年 LSteven. All rights reserved.
//

import Foundation

class PokeType {
    
    var zh : String
    var en : String
    var jp : String
    var color : Int
    
    init(zh: String, en: String, jp: String, color: Int) {
        self.zh = zh
        self.en = en
        self.jp = jp
        self.color = color
    }
}