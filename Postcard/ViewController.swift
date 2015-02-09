//
//  ViewController.swift
//  Postcard
//
//  Created by Joseph J Fong on 2/6/15.
//  Copyright (c) 2015 Joseph Fong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MessageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        MessageLabel.hidden = false
        MessageLabel.text = enterMessageTextField.text
        MessageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    

}

