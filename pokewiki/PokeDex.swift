//
//  PokeDex.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/15.
//  Copyright © 2016年 LSteven. All rights reserved.
//
import Foundation

class PokeDex {
    
    var index : UInt = 0
    var nameZH : String = ""
    var nameEN : String = ""
    var nameJP : String = ""
    var image : String = ""
    var type : String = ""
    var tcgType : Int8 = 0
    var species : String = ""
    var ability : [String] = []
    var hiddenAbility : String = ""
    var exp100 : UInt = 0
    var height : Float32 = 0.0
    var weight : Float32 = 0.0
    var footprint : String = ""
    var catchRate : UInt = 0
    var catchAtFullHP : Float32 = 0.0
    var maleRate : Float32 = 0.0
    var femaleRate : Float32 = 0.0
    var eggGroups : [String] = []
    var hatchPeriod : UInt = 0
    var baseStat : [UInt] = [] //index 0->HP, 1->Attack, 2->Defense, 3->Special Attack, 4->Special Defense, 5->Speed
    var baseFriendship : UInt = 0
    var baseExp : UInt = 0
    var battleExp : UInt = 0 //Lv.50 Battlefield
    var effortValue : [UInt] = []
    var abilityRange50 : [Range<UInt>] = []
    var abilityRange100 : [Range<UInt>] = []
    
    
    func setBasic (index : UInt, zh : String, en : String, jp : String, image : String, type: String) -> PokeDex {
        self.index = index
        self.nameZH = zh
        self.nameEN = en
        self.nameJP = jp
        self.image = image
        self.type = type
        return self
    }
    
    func setExtra (tcgType: Int8, species: String, ability: [String], hiddenAbility: String, exp100: UInt, height: Float32, weight: Float32, footprint: String, catchRate: UInt, catchAtFullHP: Float32, maleRate: Float32, femaleRate: Float32, eggGroups: [String], hatchPeriod: UInt, baseStat: [UInt], baseFriendship: UInt, baseExp: UInt, battleExp: UInt, effortValue: [UInt]) -> PokeDex {
        self.tcgType = tcgType
        self.species = species
        self.ability = ability
        self.hiddenAbility = hiddenAbility
        self.exp100 = exp100
        self.height = height
        self.weight = weight
        self.footprint = footprint
        self.catchRate = catchRate
        self.catchAtFullHP = catchAtFullHP
        self.maleRate = maleRate
        self.femaleRate = femaleRate
        self.eggGroups = eggGroups
        self.hatchPeriod = hatchPeriod
        self.baseStat = baseStat
        self.baseFriendship = baseFriendship
        self.baseExp = baseExp
        self.battleExp = battleExp
        self.effortValue = effortValue
        return self
    }
}