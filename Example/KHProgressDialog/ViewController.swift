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

    @IBOutlet weak var showProgressDialogButton: UIButton!
    let testAlert = MKKHGAlert()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showProgressDialogTapped(_ sender: Any) {
        showProgressDialogButton.isSelected = !showProgressDialogButton.isSelected
        
        if(showProgressDialogButton.isSelected){
            testAlert.showLoadingAlert(view: self.view, title: "Loading...")
            showProgressDialogButton.setTitle("Hide Progress Dialog", for: .normal)
        }else{
            testAlert.hideLoadingAlert(done: "Done")
            showProgressDialogButton.setTitle("Show Progress Dialog", for: .normal)
        }
        
    }

}

