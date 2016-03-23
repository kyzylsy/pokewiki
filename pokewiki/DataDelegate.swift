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
    var gen : [UInt] = Array(1...7)
    var games : [PokeGames] = []
    var dex : [UInt: [PokeDex]] = [:]
    var type : [UInt: PokeType] = [:]
    
    func loadPokeGames() {
        games=[PokeGames(id: 1, nameZH: "精灵宝可梦红版", nameEN: "Pokémon Red Version", nameJP: "ポケットモンスター 赤", shortName: "红", image: "redVer", gen: 1)]
        games+=[PokeGames(id: 2, nameZH: "精灵宝可梦绿版", nameEN: "Pokémon Green Version", nameJP: "ポケットモンスター 緑", shortName: "绿", image: "greenVer", gen: 1)]
        games+=[PokeGames(id: 3, nameZH: "精灵宝可梦蓝版", nameEN: "Pokémon Blue Version", nameJP: "ポケットモンスター 青", shortName: "蓝", image: "blueVer", gen: 1)]
        games+=[PokeGames(id: 4, nameZH: "精灵宝可梦皮卡丘版", nameEN: "Pokémon Yellow: Special Pikachu Edition", nameJP: "ポケットモンスター ピカチュウ", shortName: "黄", image: "yellowVer", gen: 1)]
        games+=[PokeGames(id: 5, nameZH: "精灵宝可梦金版", nameEN: "Pokémon Gold Version", nameJP: "ポケットモンスター 金", shortName: "金", image: "goldVer", gen: 2)]
        games+=[PokeGames(id: 6, nameZH: "精灵宝可梦银版", nameEN: "Pokémon Silver Version", nameJP: "ポケットモンスター 銀", shortName: "银", image: "silverVer", gen: 2)]
        games+=[PokeGames(id: 7, nameZH: "精灵宝可梦水晶版", nameEN: "Pokémon Crystal Version", nameJP: "ポケットモンスター クリスタルバージョン", shortName: "水晶", image: "crystalVer", gen: 2)]
        games+=[PokeGames(id: 8, nameZH: "精灵宝可梦红宝石版", nameEN: "Pokémon Ruby Version", nameJP: "ポケットモンスター ルビー", shortName: "红宝石", image: "rubyVer", gen: 3)]
        games+=[PokeGames(id: 9, nameZH: "精灵宝可梦蓝宝石版", nameEN: "Pokémon Sapphire Version", nameJP: "ポケットモンスター サファイア", shortName: "蓝宝石", image: "sapphireVer", gen: 3)]
        games+=[PokeGames(id: 10, nameZH: "精灵宝可梦火红版", nameEN: "Pokémon FireRed Version", nameJP: "ポケットモンスター ファイアレッド", shortName: "火红", image: "frVer", gen: 3)]
        games+=[PokeGames(id: 11, nameZH: "精灵宝可梦叶绿版", nameEN: "Pokémon LeafGreen Version", nameJP: "ポケットモンスター リーフグリーン", shortName: "叶绿", image: "lgVer", gen: 3)]
        games+=[PokeGames(id: 12, nameZH: "精灵宝可梦绿宝石版", nameEN: "Pokémon Emerald Version", nameJP: "ポケットモンスター エメラルド", shortName: "绿宝石", image: "emeraldVer", gen: 3)]
        games+=[PokeGames(id: 13, nameZH: "精灵宝可梦钻石版", nameEN: "Pokémon Diamond Version", nameJP: "ポケットモンスター ダイヤモンド", shortName: "钻石", image: "diamondVer", gen: 4)]
        games+=[PokeGames(id: 14, nameZH: "精灵宝可梦珍珠版", nameEN: "Pokémon Pearl Version", nameJP: "ポケットモンスター パール", shortName: "珍珠", image: "pearlVer", gen: 4)]
        games+=[PokeGames(id: 15, nameZH: "精灵宝可梦白金版", nameEN: "Pokémon Platinum Version", nameJP: "ポケットモンスター プラチナ", shortName: "白金", image: "platinumVer", gen: 4)]
        games+=[PokeGames(id: 16, nameZH: "精灵宝可梦心金版", nameEN: "Pokémon HeartGold Version", nameJP: "ポケットモンスター ハートゴールド", shortName: "心金", image: "hgVer", gen: 4)]
        games+=[PokeGames(id: 17, nameZH: "精灵宝可梦魂银版", nameEN: "Pokémon SoulSilver Version", nameJP: "ポケットモンスター ソウルシルバー", shortName: "魂银", image: "ssVer", gen: 4)]
        games+=[PokeGames(id: 18, nameZH: "精灵宝可梦黑版", nameEN: "Pokémon Black Version", nameJP: "ポケットモンスター ブラック", shortName: "黑", image: "blackVer", gen: 5)]
        games+=[PokeGames(id: 19, nameZH: "精灵宝可梦白版", nameEN: "Pokémon White Version", nameJP: "ポケットモンスター ホワイト", shortName: "白", image: "whiteVer", gen: 5)]
        games+=[PokeGames(id: 20, nameZH: "精灵宝可梦黑版2", nameEN: "Pokémon Black Version 2", nameJP: "ポケットモンスター ブラック ２", shortName: "黑2", image: "black2Ver", gen: 5)]
        games+=[PokeGames(id: 21, nameZH: "精灵宝可梦白版2", nameEN: "Pokémon White Version 2", nameJP: "ポケットモンスター ホワイト ２", shortName: "白2", image: "white2Ver", gen: 5)]
        games+=[PokeGames(id: 22, nameZH: "精灵宝可梦X", nameEN: "Pokémon X", nameJP: "ポケットモンスターＸ", shortName: "X", image: "xVer", gen: 6)]
        games+=[PokeGames(id: 23, nameZH: "精灵宝可梦Y", nameEN: "Pokémon Y", nameJP: "ポケットモンスターＹ", shortName: "Y", image: "yVer", gen: 6)]
        games+=[PokeGames(id: 24, nameZH: "精灵宝可梦终极红宝石", nameEN: "Pokémon Omega Ruby", nameJP: "ポケットモンスター オメガルビー", shortName: "Ω红宝石", image: "orVer", gen: 6)]
        games+=[PokeGames(id: 25, nameZH: "精灵宝可梦始源蓝宝石", nameEN: "Pokémon Alpha Sapphire", nameJP: "ポケットモンスター アルファサファイア", shortName: "α蓝宝石", image: "asVer", gen: 6)]
    }
    
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
        dex[1] = [PokeDex().setBasic(1, zh: "妙蛙种子", en: "Bulbasaur", jp: "フシギダネ", image: "Bulbasaur", type: "5,6")]
        dex[2] = [PokeDex().setBasic(152, zh: "菊草叶", en: "Chikorita", jp: "チコリータ", image: "Chikorita", type: "5")]
    }
    
    func getType() -> [UInt: PokeType] {
        return type
    }
    
    func getPokeDexByGen(gen : UInt) -> [PokeDex] {
        return dex[gen] ?? []
    }
}