//
//  PokeDex.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/15.
//  Copyright © 2016年 LSteven. All rights reserved.
//
import Foundation

class PokeDex {
    
    var gen : Int8 = 0
    var index : Int32 = 0
    var nameZH : String = ""
    var nameEN : String = ""
    var nameJP : String = ""
    var image : String = ""
    var type : String = ""
    var tcgType : Int8 = 0
    var species : String = ""
    var ability : [String] = []
    
    func setBasic (gen : Int8, index : Int32, zh : String, en : String, jp : String, image : String, type: String) -> PokeDex{
        self.gen = gen
        self.index = index
        self.nameZH = zh
        self.nameEN = en
        self.nameJP = jp
        self.image = image
        self.type = type
        return self
    }
}