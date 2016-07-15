//
//  TVKVOViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVKVOViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!

    @IBOutlet weak var loginButton: UIButton!
    
    let goal = Login3ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loginButton.addTarget(self, action: #selector(login), forControlEvents: UIControlEvents.TouchUpInside)
        
        
        goal.addObserver(self, forKeyPath: "username", options: [NSKeyValueObservingOptions.New,NSKeyValueObservingOptions.Old], context: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func login() {
        
        
        self.navigationController?.pushViewController(goal, animated: true)
    }
    
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        if keyPath == "username" {
//            对于登录来说，最好在下一个VC中添加一个用来存储username的变量，同时在点击登陆后对username进行第二次的存储，方便KVO调用，因为KVO对于input的内容是不识别的。
            self.welcomeLabel.text = "欢迎"+(String)((change!)["new"]!)
        }
    }

}
