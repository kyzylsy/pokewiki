//
//  PokeDex.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/15.
//  Copyright © 2016年 LSteven. All rights reserved.
//
import Foundation
import RealmSwift
import Realm

class PokeDex : Object {
    
    dynamic var gen : Int8 = 0
    dynamic var index : Int32 = 0
    dynamic var nameZH : String = ""
    dynamic var nameEN : String = ""
    dynamic var nameJP : String = ""
    dynamic var image : String = ""
    dynamic var type : String = ""
    
    func setter (gen : Int8, index : Int32, zh : String, en : String, jp : String, image : String, type: String) -> PokeDex{
        self.gen = gen
        self.index = index
        self.nameZH = zh
        self.nameEN = en
        self.nameJP = jp
        self.image = image
        self.type = type
        return self
    }
    
    override static func primaryKey() -> String? {
        return "index"
    }
    
    override static func indexedProperties() -> [String] {
        return ["gen"]
    }
}