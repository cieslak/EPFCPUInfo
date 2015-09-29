//
//  ViewController.swift
//  CPUInfo
//
//  Created by Chris.Cieslak on 9/29/15.
//  Copyright © 2015 Electropuf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bigAssLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let hwId = MGCopyAnswer(kMGHardwarePlatform).takeRetainedValue() as? String {
            bigAssLabel.text = hwId
        } else {
            bigAssLabel.text = "???"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

