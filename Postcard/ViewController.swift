//
//  ViewController.swift
//  Postcard
//
//  Created by Philip Parker on 10/4/14.
//  Copyright (c) 2014 Philip Parker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var enterNameTextField: UITextField!
    @IBOutlet var enterMessageTextField: UITextField!
    @IBOutlet var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we the press the button
        // Adding a Comment here to test commits
        // Don't want to break anything
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
}
