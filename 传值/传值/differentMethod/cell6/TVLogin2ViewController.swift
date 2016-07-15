//
//  TVLogin2ViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVLogin2ViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var login: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.login.addTarget(self, action: #selector(logYouName), forControlEvents: UIControlEvents.TouchUpInside)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func logYouName() {
//        obj为self是为了当观察者接受到提醒的时候可以回调发送者
        let notific = NSNotification.init(name: "loginNameNotification", object: self, userInfo: ["name":name.text!])
        
        NSNotificationCenter.defaultCenter().postNotification(notific)
        
        self.navigationController?.popViewControllerAnimated(true)
    }

}
