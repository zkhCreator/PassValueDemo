//
//  TVNotifiVC.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVNotifiVC: UIViewController {

    @IBOutlet weak var welcomeButton: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loginButton.addTarget(self, action: #selector(next), forControlEvents: UIControlEvents.TouchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func next() {
        let goal = TVLogin2ViewController()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(loginName), name: "loginNameNotification", object: goal)
        
        self.navigationController?.pushViewController(goal, animated: true)
    }
    
    func loginName(notification:NSNotification) {
        let dic = notification.userInfo
        
        self.welcomeButton.text = "欢迎:"+(String)(dic!["name"]!)
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
}
