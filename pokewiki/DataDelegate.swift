//
//  DbGenerater.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/18.
//  Copyright © 2016年 LSteven. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

class DataDelegate {
    
    //let realm = try! Realm()
    var dex : [UInt: [PokeDex]] = [:]
    var type : [UInt: PokeType] = [:]
    
    func loadPokeType() {
        type[1] = PokeType().setter(1, zh: "一般", en: "Normal", jp: "ノーマルタイプ", color: 0xA8A878)
        type[2] = PokeType().setter(2, zh: "火", en: "Fire", jp: "ほのおタイプ", color: 0xF08030)
        type[3] = PokeType().setter(3, zh: "水", en: "Water", jp: "みずタイプ", color: 0x6890F0)
        type[4] = PokeType().setter(4, zh: "飞行", en: "Flying", jp: "ひこうタイプ", color: 0xA890F0)
        type[5] = PokeType().setter(5, zh: "草", en: "Grass", jp: "くさタイプ", color: 0x78C850)
        type[6] = PokeType().setter(6, zh: "毒", en: "Posion", jp: "どくタイプ", color: 0xA040A0)
        type[7] = PokeType().setter(7, zh: "电", en: "Electric", jp: "でんきタイプ", color: 0xF8D030)
        type[8] = PokeType().setter(8, zh: "地上", en: "Ground", jp: "じめんタイプ", color: 0xE0C068)
        type[9] = PokeType().setter(9, zh: "超能力", en: "Psychic", jp: "エスパータイプ", color: 0xF85888)
        type[10] = PokeType().setter(10, zh: "岩石", en: "Rock", jp: "いわタイプ", color: 0xB8A038)
        type[11] = PokeType().setter(11, zh: "冰", en: "Ice", jp: "こおりタイプ", color: 0x98D8D8)
        type[12] = PokeType().setter(12, zh: "虫", en: "Bug", jp: "むしタイプ", color: 0xA8B820)
        type[13] = PokeType().setter(13, zh: "龙", en: "Dragon", jp: "ドラゴンタイプ", color: 0x7038F8)
        type[14] = PokeType().setter(14, zh: "幽灵", en: "Ghost", jp: "ゴーストタイプ", color: 0x705898)
        type[15] = PokeType().setter(15, zh: "恶", en: "Dark", jp: "あくタイプ", color: 0x705848)
        type[16] = PokeType().setter(16, zh: "钢", en: "Steel", jp: "はがねタイプ", color: 0xB8B8D0)
        type[17] = PokeType().setter(17, zh: "妖精", en: "Fairy", jp: "フェアリータイプ", color: 0xEE99AC)
        type[18] = PokeType().setter(18, zh: "??? 属性", en: "??? type", jp: "？？？タイプ", color: 0x68A090)
    }
    
    func loadPokeDex() {
        dex[1] = [PokeDex().setBasic(1, index: 1, zh: "妙蛙种子", en: "Bulbasaur", jp: "フシギダネ", image: "Bulbasaur", type:"5,6")]
        dex[2] = [PokeDex().setBasic(2, index: 152, zh: "菊草叶", en: "Chikorita", jp: "チコリータ", image: "Chikorita", type:"5")]
    }
    
    func getType() -> [UInt: PokeType] {
        return type
    }
    
    func getPokeDexByGen(gen : UInt) -> [PokeDex] {
        return dex[gen] ?? []
    }
}