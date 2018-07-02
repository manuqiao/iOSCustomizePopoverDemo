//
//  ViewController.swift
//  PopOverDemo
//
//  Created by 乔汝嘉 on 2018/6/28.
//  Copyright © 2018年 ManuQiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination
//        vc.modalPresentationStyle = .popover
        let popVC = vc.popoverPresentationController
        popVC?.popoverBackgroundViewClass = BackgroundView.self
        popVC?.presentedView?.layer.shadowOpacity = 0
        popVC?.delegate = self
        popVC?.sourceView = view
        popVC?.sourceRect = CGRect(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2 + vc.preferredContentSize.height / 2, width: 0, height: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let optionsVC = storyboard.instantiateViewController(
            withIdentifier: "SecondViewController")
        
        // Use the popover presentation style for your view controller.
        optionsVC.modalPresentationStyle = .popover
        
        // Specify the anchor point for the popover.
//        optionsVC.popoverPresentationController?.barButtonItem =
//        optionsControl
        
        // Present the view controller (in a popover).
        self.present(optionsVC, animated: true) {
            // The popover is visible.
        }
    }
    
}

