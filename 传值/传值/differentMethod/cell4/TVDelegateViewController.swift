//
//  TVDelegateViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVDelegateViewController: UIViewController,LoginDelegate {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var login: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        login.addTarget(self, action: #selector(next), forControlEvents: UIControlEvents.TouchUpInside)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeText(name: String) {
        self.welcomeLabel.text = "欢迎回来："+name
    }
    
    func next() {
        let goal = TVLoginViewController()
        goal.delegate = self
        
        self.navigationController?.pushViewController(goal, animated: true)
    }

}
