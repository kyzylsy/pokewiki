//
//  PokeDex.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/15.
//  Copyright © 2016年 LSteven. All rights reserved.
//

import Foundation
import UIKit

class PokeDex {
    
    var gen : Int8
    var index : Int32
    var nameZH : String
    var nameEN : String
    var nameJP : String
    var image : String
    var type : [String]?
    
    init(gen : Int8, index : Int32, zh : String, en : String, jp : String, image : String) {
        self.gen = gen
        self.index = index
        self.nameZH = zh
        self.nameEN = en
        self.nameJP = jp
        self.image = image
    }
}