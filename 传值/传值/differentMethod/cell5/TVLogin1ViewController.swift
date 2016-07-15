//
//  TVLogin1ViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

typealias returnClosure = (string:String)->Void

class TVLogin1ViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    var closureValue:returnClosure?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.addTarget(self, action: #selector(login), forControlEvents: UIControlEvents.TouchUpInside)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func login() {
        if closureValue != nil {
            closureValue!(string: self.input.text!)
        }
        self.navigationController?.popViewControllerAnimated(true)
    }
    
}
