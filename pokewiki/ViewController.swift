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
        let cellIdentifier = "protoCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! PokeDexOneTypeTableViewCell
        
        let inner = dex[gen - 1]![indexPath.row]
        
        cell.DexIndex.text = String(format: "#%03d", inner.index)
        cell.DexNameZH.text = inner.nameZH
        cell.DexNameEN.text = inner.nameEN
        cell.DexNameJP.text = inner.nameJP
        cell.DexImage.image = UIImage(named: inner.image)
        
        for var index = 0; index < 2; index++ {
            if inner.type?.count == 1 {
                let view = UIView(frame: CGRectMake(CGFloat(180), 0, 90, 45))
                view.layer.borderWidth = 1
                view.backgroundColor = UIColor(red: 120/255, green: 200/255, blue: 80/255, alpha: 1.0)
                
                let typeView = UILabel(frame: CGRectMake(0,0,90,45))
                typeView.text = inner.type![index]
                typeView.textAlignment = NSTextAlignment.Center
                typeView.textColor = UIColor.whiteColor()
                typeView.font = UIFont.systemFontOfSize(12)
                
                view.addSubview(typeView)
                cell.addSubview(view)
                break
            }
            if inner.type?.count == 2 {
                let view = UIView(frame: CGRectMake(CGFloat(180 + index * 45), 0, 45, 45))
                view.layer.borderWidth = 1
                view.backgroundColor = UIColor(red: 120/255, green: 200/255, blue: 80/255, alpha: 1.0)
                
                let typeView = UILabel(frame: CGRectMake(0,0,45,45))
                typeView.text = inner.type![index]
                typeView.textAlignment = NSTextAlignment.Center
                typeView.textColor = UIColor.whiteColor()
                typeView.font = UIFont.systemFontOfSize(12)
                
                view.addSubview(typeView)
                cell.addSubview(view)

            }
            
        }
        
        return cell
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
        let bulbasaur = PokeDex(gen: 1, index: 001, zh: "妙蛙种子", en: "Bulbasaur", jp: "フシギダネ", image: "Bulbasaur")
        bulbasaur.type = ["水","毒"]
        let chikorita = PokeDex(gen: 2, index: 152, zh: "菊草叶", en: "Chikorita", jp: "チコリータ", image: "Chikorita")
        dex[0] = [bulbasaur]
        chikorita.type = ["草"]
        dex[1] = [chikorita]
    }
}

