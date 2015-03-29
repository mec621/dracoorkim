//
//  kimcry.swift
//  DracoorKim
//
//  Created by Melissa Chenok on 3/28/15.
//  Copyright (c) 2015 DracoorKim.com. All rights reserved.
//


import UIKit

class kimcry: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func playagain(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
}