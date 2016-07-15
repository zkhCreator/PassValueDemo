//
//  TVGoal3ViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVGoal3ViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var showLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let app = UIApplication.sharedApplication()
        
        let selfDelegate = app.delegate as! AppDelegate
        
        showLabel.text = selfDelegate.storeString
        
        self.backButton.addTarget(self, action: #selector(goBack), forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goBack() {
        self.navigationController?.popViewControllerAnimated(true)
    }
}
