//
//  PokeType.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/16.
//  Copyright © 2016年 LSteven. All rights reserved.
//
import Foundation
import RealmSwift

class PokeType : Object {
    
    dynamic var id : Int8 = 0
    dynamic var zh : String = ""
    dynamic var en : String = ""
    dynamic var jp : String = ""
    dynamic var color : Int = 0x0
    
    func setter(id: Int8, zh: String, en: String, jp: String, color: Int) -> PokeType {
        self.id = id
        self.zh = zh
        self.en = en
        self.jp = jp
        self.color = color
        return self
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}