//
//  ViewController.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/15.
//  Copyright © 2016年 LSteven. All rights reserved.
//

import UIKit
import RealmSwift

class DexListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let data = DataDelegate()
    var gen : UInt = 1

    @IBOutlet weak var dexTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dexTable.delegate = self
        dexTable.dataSource = self
        
        data.loadPokeType()
        data.loadPokeDex()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.getPokeDexByGen(gen).count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let pokémon = data.getPokeDexByGen(gen)[indexPath.row]
        var types = pokémon.type.componentsSeparatedByString(",")
        if (types.count == 1) {
            let cell = tableView.dequeueReusableCellWithIdentifier("oneTypeCell", forIndexPath: indexPath) as! OneTypeDexTableViewCell
            
            cell.index.text = String(format: "#%03d", pokémon.index)
            cell.img.image = UIImage(named: pokémon.image)
            cell.nameZH.text = pokémon.nameZH
            cell.nameEN.text = pokémon.nameEN
            cell.nameJP.text = pokémon.nameJP
            cell.type.backgroundColor = UIColor(netHex: data.getType()[UInt(pokémon.type)!]!.color)
            cell.type.text = data.getType()[UInt(pokémon.type)!]!.zh
            
            return cell

        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("twoTypeCell", forIndexPath: indexPath) as! TwoTypeDexTableViewCell
            cell.index.text = String(format: "#%03d", pokémon.index)
            cell.img.image = UIImage(named: pokémon.image)
            cell.nameZH.text = pokémon.nameZH
            cell.nameEN.text = pokémon.nameEN
            cell.nameJP.text = pokémon.nameJP
            
            cell.firstType.backgroundColor = UIColor(netHex: data.getType()[UInt(types[0])!]!.color)
            cell.firstType.text = data.getType()[UInt(types[0])!]!.zh
            cell.secondType.backgroundColor = UIColor(netHex: data.getType()[UInt(types[1])!]!.color)
            cell.secondType.text = data.getType()[UInt(types[1])!]!.zh
            return cell
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print("show detail")
        let detailViewController = segue.destinationViewController as! DexDetailViewController
        if let selectedCell = sender as? UITableViewCell {
            let indexPath = dexTable.indexPathForCell(selectedCell)!
            detailViewController.pokeDex = data.getPokeDexByGen(gen)[indexPath.row]
        }
    }


    @IBAction func touchGen1(sender: UIButton) {
        gen = 1
        dexTable.reloadData()
    }
    
    @IBAction func touchGen2(sender: UIButton) {
        gen = 2
        dexTable.reloadData()
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

