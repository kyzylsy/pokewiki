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
    
    var nameZH : String
    var nameEN : String
    var nameJP : String
    var image : String
    
    init(zh: String, en : String, jp : String, image : String) {
        self.nameZH = zh
        self.nameEN = en
        self.nameJP = jp
        self.image = image
    }
}