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

class DbDelegate {
    
    let realm = try! Realm()
    
    func loadPokeType() {
        try! realm.write {
            realm.deleteAll()
            realm.add(PokeType().setter(1, zh: "一般", en: "Normal", jp: "ノーマルタイプ", color: 0xA8A878))
            realm.add(PokeType().setter(2, zh: "火", en: "Fire", jp: "ほのおタイプ", color: 0xF08030))
            realm.add(PokeType().setter(3, zh: "水", en: "Water", jp: "みずタイプ", color: 0x6890F0))
            realm.add(PokeType().setter(4, zh: "飞行", en: "Flying", jp: "ひこうタイプ", color: 0xA890F0))
            realm.add(PokeType().setter(5, zh: "草", en: "Grass", jp: "くさタイプ", color: 0x78C850))
            realm.add(PokeType().setter(6, zh: "毒", en: "Posion", jp: "どくタイプ", color: 0xA040A0))
            realm.add(PokeType().setter(7, zh: "电", en: "Electric", jp: "でんきタイプ", color: 0xF8D030))
            realm.add(PokeType().setter(8, zh: "地上", en: "Ground", jp: "じめんタイプ", color: 0xE0C068))
            realm.add(PokeType().setter(9, zh: "超能力", en: "Psychic", jp: "エスパータイプ", color: 0xF85888))
            realm.add(PokeType().setter(10, zh: "岩石", en: "Rock", jp: "いわタイプ", color: 0xB8A038))
            realm.add(PokeType().setter(11, zh: "冰", en: "Ice", jp: "こおりタイプ", color: 0x98D8D8))
            realm.add(PokeType().setter(12, zh: "虫", en: "Bug", jp: "むしタイプ", color: 0xA8B820))
            realm.add(PokeType().setter(13, zh: "龙", en: "Dragon", jp: "ドラゴンタイプ", color: 0x7038F8))
            realm.add(PokeType().setter(14, zh: "幽灵", en: "Ghost", jp: "ゴーストタイプ", color: 0x705898))
            realm.add(PokeType().setter(15, zh: "恶", en: "Dark", jp: "あくタイプ", color: 0x705848))
            realm.add(PokeType().setter(16, zh: "钢", en: "Steel", jp: "はがねタイプ", color: 0xB8B8D0))
            realm.add(PokeType().setter(17, zh: "妖精", en: "Fairy", jp: "フェアリータイプ", color: 0xEE99AC))
            realm.add(PokeType().setter(18, zh: "??? 属性", en: "??? type", jp: "？？？タイプ", color: 0x68A090))
        }
        print(realm.path)
    }
    
    func getPokeTypeData() -> [Int8: PokeType] {
        var result = [Int8: PokeType]()
        for type in realm.objects(PokeType) {
            result[type.id] = type
        }
        return result
    }
}