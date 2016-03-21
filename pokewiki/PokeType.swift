//
//  PokeType.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/16.
//  Copyright © 2016年 LSteven. All rights reserved.
//
import Foundation

class PokeType {
    
    var id : Int8 = 0
    var zh : String = ""
    var en : String = ""
    var jp : String = ""
    var color : Int = 0x0
    
    func setter(id: Int8, zh: String, en: String, jp: String, color: Int) -> PokeType {
        self.id = id
        self.zh = zh
        self.en = en
        self.jp = jp
        self.color = color
        return self
    }
}