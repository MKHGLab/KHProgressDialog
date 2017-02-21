//
//  ViewController.swift
//  KHProgressDialog
//
//  Created by MKHGLab on 02/21/2017.
//  Copyright (c) 2017 MKHGLab. All rights reserved.
//

import UIKit
import KHProgressDialog

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let test = KHProgressTest()
        test.progressTestLog()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

