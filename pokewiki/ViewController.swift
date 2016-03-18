//
//  ViewController.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/15.
//  Copyright © 2016年 LSteven. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let db = DbDelegate()
    var gen = 1
    var dex = [Int:[PokeDex]]()

    @IBOutlet weak var DexTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DexTable.delegate = self
        DexTable.dataSource = self
        
        db.loadPokeType()
        let data = db.getPokeTypeData()
        print(data)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return dex[gen - 1]!.count
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        /*let pokémon = dex[gen - 1]![indexPath.row]
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
        }*/
        return tableView.dequeueReusableCellWithIdentifier("oneTypeCell", forIndexPath: indexPath) as! OneTypeDexTableViewCell
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
        /*let bulbasaur = PokeDex(gen: 1, index: 001, zh: "妙蛙种子", en: "Bulbasaur", jp: "フシギダネ", image: "Bulbasaur", type:["grass","posion"])
        let chikorita = PokeDex(gen: 2, index: 152, zh: "菊草叶", en: "Chikorita", jp: "チコリータ", image: "Chikorita", type:["grass"])
        dex[0] = [bulbasaur]
        dex[1] = [chikorita]*/
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

