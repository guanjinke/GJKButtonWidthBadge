//
//  ViewController.swift
//  TestBadge
//
//  Created by Thomas Liu on 11/19/14.
//  Copyright (c) 2014 guanjinke. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var button : GJKButtonWithBadge!
    @IBAction func buttonPressed(sender: AnyObject) {
        button.badgeValue += 3
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button = GJKButtonWithBadge(frame: CGRectMake(0,0,30,30))
        button.setImage(UIImage(named: "Image"), forState: .Normal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        textField.resignFirstResponder()
    }
}

