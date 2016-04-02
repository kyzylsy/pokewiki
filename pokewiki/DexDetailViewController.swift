//
//  DexDetailViewController.swift
//  pokewiki
//
//  Created by Steven Liu on 16/3/23.
//  Copyright © 2016年 LSteven. All rights reserved.
//

import UIKit

class DexDetailViewController: UIViewController {

    var pokeDex : PokeDex?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(pokeDex?.nameZH)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
