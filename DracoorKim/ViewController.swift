//
//  ViewController.swift
//  DracoorKim
//
//  Created by Melissa Chenok on 3/28/15.
//  Copyright (c) 2015 DracoorKim.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentImage : [String: String] = ["": ""]
    var images : [Dictionary<String,String>] = [
        [
            "imageName": "dracoios",
            "correctAnswer": "Draco",
        ],
        [
            "imageName": "kimstandios",
            "correctAnswer": "Kim",
        ],
        [
            "imageName": "stadiumios",
            "correctAnswer": "Draco",
        ]
    ]

    
    @IBOutlet weak var bgImg: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        currentImage = images[arc4random_uniform(UInt32(images.count-1))-0]
        bgImg.image = UIImage(named: currentImage["imageName"]!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickedDraco(sender: AnyObject) {
        if (currentImage["correctAnswer"] == "Draco") {
           performSegueWithIdentifier("DracoHappy", sender: nil)
        } else {
            performSegueWithIdentifier("DracoCry", sender: nil)
        }
        
    }

    
    @IBAction func clickedKim(sender: AnyObject) {
        if (currentImage["correctAnswer"] == "Kim") {
            performSegueWithIdentifier("KimHappy", sender: nil)
        } else {
            performSegueWithIdentifier("KimCry", sender: nil)
        }
    
    }
}