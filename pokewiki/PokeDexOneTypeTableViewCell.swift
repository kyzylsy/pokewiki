//
//  PokemonDexTableViewCell.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/15.
//  Copyright © 2016年 LSteven. All rights reserved.
//

import UIKit

class PokeDexOneTypeTableViewCell: UITableViewCell {

    @IBOutlet weak var index: UILabel!
    @IBOutlet weak var nameZH: UILabel!
    @IBOutlet weak var nameEN: UILabel!
    @IBOutlet weak var nameJP: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var typeView: UIView!
    @IBOutlet weak var firstType: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}