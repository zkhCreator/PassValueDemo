//
//  TVGoalViewController.swift
//  传值
//
//  Created by zkhCreator on 7/14/16.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

class TVGoalViewController: UIViewController {
    
    let text = UILabel.init()
    
    let backButton = UIButton.init(type: UIButtonType.System)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        view.addSubview(text)
        view.addSubview(backButton)
        
        text.frame = CGRectMake(0, 100, 100, 100)
        backButton.frame = CGRectMake(0, 200, 100, 100)
        backButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        backButton.setTitle("返回(back)", forState: UIControlState.Normal)
        backButton.addTarget(self, action: #selector(backToLastViewController), forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    convenience init(text:String) {
        self.init(nibName:nil, bundle:nil)
        self.text.text = text
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func backToLastViewController() {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
}
