//
//  TodayViewController.swift
//  NumberWidget
//
//  Created by Jorge Orjuela on 31/08/14.
//  Copyright (c) 2014 NGeen. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController {
    
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("updateExtension"), name: NSUserDefaultsDidChangeNotification, object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateExtension() {
        let userDefaults = NSUserDefaults(suiteName: "group.yourcompany.nameoftheapp")
        let value: AnyObject! = userDefaults.objectForKey("value")
        self.textfield.text = "\(value)"
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!) {
        // Perform any setup necessary in order to update the view.

        // If an error is encoutered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }
    
}
