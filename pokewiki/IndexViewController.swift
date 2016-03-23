//
//  IndexViewController.swift
//  pokewiki
//
//  Created by Steven Liu on 16/3/19.
//  Copyright © 2016年 LSteven. All rights reserved.
//

import UIKit

class IndexViewController: UIViewController {

    let titleView = UILabel()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func didMoveToParentViewController(parent: UIViewController?) {
        super.didMoveToParentViewController(parent)
        
        if parent != nil && self.navigationItem.titleView == nil {
            initNavigationItemTitleView()
        }
    }
    
    func initNavigationItemTitleView() {
        titleWasTapped()
        titleView.font = UIFont(name: "HelveticaNeue-Medium", size: 17)
        self.navigationItem.titleView = titleView
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(IndexViewController.titleWasTapped))
        titleView.userInteractionEnabled = true
        titleView.addGestureRecognizer(recognizer)
    }
    
    func titleWasTapped() {
        counter += 1 //++count will remove at swift3
        switch counter {
        case 1:
            titleView.text = "宝可梦百科"
        case 2:
            titleView.text = "口袋百科"
        case 3:
            titleView.text = "神奇宝贝百科"
        case 4:
            titleView.text = "Pokémon Wiki"
        case 5:
            titleView.text = "ポケモン Wiki"
            counter = 0
        default:
            break
        }
        let width = titleView.sizeThatFits(CGSizeMake(CGFloat.max, CGFloat.max)).width
        titleView.frame = CGRect(origin:CGPointZero, size:CGSizeMake(width, 500))
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
