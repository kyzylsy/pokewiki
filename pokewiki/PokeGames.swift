//
//  PokeGames.swift
//  pokewiki
//
//  Created by Steven Liu on 16/3/22.
//  Copyright © 2016年 LSteven. All rights reserved.
//

import Foundation

class PokeGames {
    
    var id : UInt
    var nameZH : String
    var nameEN : String
    var nameJP : String
    var shortName : String
    var image : String
    var gen : UInt
    
    init(id: UInt, nameZH: String, nameEN: String, nameJP: String, shortName: String, image: String, gen: UInt) {
        self.id = id;
        self.nameZH = nameZH
        self.nameEN = nameEN
        self.nameJP = nameJP
        self.shortName = shortName
        self.image = image
        self.gen = gen
    }
}
