//
//  Login3ViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class Login3ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginButton.addTarget(self, action: #selector(login), forControlEvents: UIControlEvents.TouchUpInside)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func login() {
        self.setValue(input.text, forKey: "username")
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    

}
