//
//  SecondViewController.swift
//  SimpleOne
//
//  Created by Ted Hoyee on 4/23/15.
//  Copyright (c) 2015 Ted Hoyee. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let barHomeButton = UIBarButtonItem(image: UIImage(named: "titleEN"), style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.navigationItem.leftBarButtonItems = [barHomeButton]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

