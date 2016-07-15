//
//  TVAPPDeleViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVAPPDeleViewController: UIViewController {
    @IBOutlet weak var input: UITextField!

    @IBOutlet weak var jump: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.jump.addTarget(self, action: #selector(next), forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func next()  {
        let next = TVGoal3ViewController()
        
        let selfDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        selfDelegate.storeString = self.input.text!
        
        self.navigationController?.pushViewController(next, animated: true)
    }

}
