//
//  ViewController.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/15.
//  Copyright © 2016年 LSteven. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var gen = 1
    var dex = [Int:[PokeDex]]()
    let types = [
        "normal": PokeType(zh: "一般", en: "Normal", jp: "ノーマルタイプ", color: 0xA8A878),
        "fire": PokeType(zh: "火", en: "Fire", jp: "ほのおタイプ", color: 0xF08030),
        "fighting": PokeType(zh: "格斗", en: "Fighting", jp: "かくとうタイプ", color: 0xC03028),
        "water": PokeType(zh: "水", en: "Water", jp: "みずタイプ", color: 0x6890F0),
        "flying": PokeType(zh: "飞行", en: "Flying", jp: "ひこうタイプ", color: 0xA890F0),
        "grass": PokeType(zh: "草", en: "Grass", jp: "くさタイプ", color: 0x78C850),
        "posion": PokeType(zh: "毒", en: "Posion", jp: "どくタイプ", color: 0xA040A0),
        "electric": PokeType(zh: "电", en: "Electric", jp: "でんきタイプ", color: 0xF8D030),
        "ground": PokeType(zh: "地上", en: "Ground", jp: "じめんタイプ", color: 0xE0C068),
        "psychic": PokeType(zh: "超能力", en: "Psychic", jp: "エスパータイプ", color: 0xF85888),
        "rock": PokeType(zh: "岩石", en: "Rock", jp: "いわタイプ", color: 0xB8A038),
        "ice": PokeType(zh: "冰", en: "Ice", jp: "こおりタイプ", color: 0x98D8D8),
        "bug": PokeType(zh: "虫", en: "Bug", jp: "むしタイプ", color: 0xA8B820),
        "dragon": PokeType(zh: "龙", en: "Dragon", jp: "ドラゴンタイプ", color: 0x7038F8),
        "ghost": PokeType(zh: "幽灵", en: "Ghost", jp: "ゴーストタイプ", color: 0x705898),
        "dark": PokeType(zh: "恶", en: "Dark", jp: "あくタイプ", color: 0x705848),
        "steel": PokeType(zh: "钢", en: "Steel", jp: "はがねタイプ", color: 0xB8B8D0),
        "fairy": PokeType(zh: "妖精", en: "Fairy", jp: "フェアリータイプ", color: 0xEE99AC),
        "???": PokeType(zh: "??? 属性", en: "??? type", jp: "？？？タイプ", color: 0x68A090)
    ]

    @IBOutlet weak var DexTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPokeDex()
        
        DexTable.delegate = self
        DexTable.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dex[gen - 1]!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let pokémon = dex[gen - 1]![indexPath.row]
        if (pokémon.type.count == 1) {
            let cell = tableView.dequeueReusableCellWithIdentifier("oneTypeCell", forIndexPath: indexPath) as! OneTypeDexTableViewCell
            
            cell.index.text = String(format: "#%03d", pokémon.index)
            cell.img.image = UIImage(named: pokémon.image)
            cell.nameZH.text = pokémon.nameZH
            cell.nameEN.text = pokémon.nameEN
            cell.nameJP.text = pokémon.nameJP
            cell.typeView.backgroundColor = UIColor(netHex: types[pokémon.type[0]]!.color)
            cell.type.text = types[pokémon.type[0]]!.zh
            return cell

        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("twoTypeCell", forIndexPath: indexPath) as! TwoTypeDexTableViewCell
            cell.index.text = String(format: "#%03d", pokémon.index)
            cell.img.image = UIImage(named: pokémon.image)
            cell.nameZH.text = pokémon.nameZH
            cell.nameEN.text = pokémon.nameEN
            cell.nameJP.text = pokémon.nameJP
            cell.firstTypeView.backgroundColor = UIColor(netHex: types[pokémon.type[0]]!.color)
            cell.firstType.text = types[pokémon.type[0]]!.zh
            cell.secondTypeView.backgroundColor = UIColor(netHex: types[pokémon.type[1]]!.color)
            cell.secondType.text = types[pokémon.type[1]]!.zh
            return cell
        }
    }


    @IBAction func touchGen1(sender: UIButton) {
        gen = 1
        DexTable.reloadData()
    }
    
    @IBAction func touchGen2(sender: UIButton) {
        gen = 2
        DexTable.reloadData()
    }

    func loadPokeDex() {
        let bulbasaur = PokeDex(gen: 1, index: 001, zh: "妙蛙种子", en: "Bulbasaur", jp: "フシギダネ", image: "Bulbasaur", type:["grass","posion"])
        let chikorita = PokeDex(gen: 2, index: 152, zh: "菊草叶", en: "Chikorita", jp: "チコリータ", image: "Chikorita", type:["grass"])
        dex[0] = [bulbasaur]
        dex[1] = [chikorita]
    }
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}

