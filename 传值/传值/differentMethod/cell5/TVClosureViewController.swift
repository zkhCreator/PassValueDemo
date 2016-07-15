//
//  TVClosureViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVClosureViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var login: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.login.addTarget(self, action: #selector(jump), forControlEvents: UIControlEvents.TouchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func myClosure(string:String) -> Void {
        self.welcomeLabel.text = "欢迎："+string
    }
    
    
    func jump() {
        let goal = TVLogin1ViewController()
        goal.closureValue = myClosure
        self.navigationController?.pushViewController(goal, animated: true)
    }
}
