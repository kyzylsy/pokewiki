//
//  PokemonDexTableViewCell.swift
//  pokewiki
//
//  Created by 刘斯宇 on 16/3/15.
//  Copyright © 2016年 LSteven. All rights reserved.
//

import UIKit

class PokemonDexTableViewCell: UITableViewCell {

    @IBOutlet weak var CellVertical: UIView!
    @IBOutlet weak var DexNameZH: UILabel!
    @IBOutlet weak var DexNameEN: UILabel!
    @IBOutlet weak var DexNameJP: UILabel!
    @IBOutlet weak var DexImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        CellVertical.layer.borderWidth = 1
        CellVertical.layer.borderColor = UIColor.blueColor().CGColor
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
