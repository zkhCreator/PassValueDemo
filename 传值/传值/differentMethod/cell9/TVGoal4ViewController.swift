//
//  TVGoal4ViewController.swift
//  传值
//
//  Created by zkhCreator on 7/15/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVGoal4ViewController: UIViewController {

    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var showLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let userdefault = NSUserDefaults.standardUserDefaults()
        
        self.showLabel.text = (String)(userdefault.valueForKey("store")!)
        
        self.back.addTarget(self, action: #selector(goBack), forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func goBack() {
        self.navigationController?.popViewControllerAnimated(true)
    }

}
