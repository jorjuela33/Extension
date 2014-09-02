//
//  ViewController.swift
//  Extension
//
//  Created by Jorge Orjuela on 31/08/14.
//  Copyright (c) 2014 NGeen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clicked() {
        let userDefaults = NSUserDefaults(suiteName: "group.yourcompany.nameoftheapp")
        userDefaults.setObject("value", forKey: "value")
        userDefaults.synchronize()
    }

}

