//
//  SecondViewController.swift
//  PopOverDemo
//
//  Created by 乔汝嘉 on 2018/6/28.
//  Copyright © 2018年 ManuQiao. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        modalPresentationStyle = .popover
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapped(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
