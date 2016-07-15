//
//  TVUserDefaultViewController.swift
//  传值
//
//  Created by zkhCreator on 7/15/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVUserDefaultViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var jump: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        jump.addTarget(self, action: #selector(next), forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func next() {
        
        NSUserDefaults.standardUserDefaults().setObject(self.input.text, forKey: "store")
        
        self.navigationController?.pushViewController(TVGoal4ViewController(), animated: true)
    }
}
