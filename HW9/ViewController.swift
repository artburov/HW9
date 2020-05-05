//
//  ViewController.swift
//  HW9
//
//  Created by Admin on 29.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var heightLabel: NSLayoutConstraint!
    
    @IBOutlet weak var heihtConstraint: NSLayoutConstraint!
    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func clickBtn(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
               
        if !sender.isSelected {
            heightLabel.constant -= 70
            heihtConstraint.constant += 50
            view.layoutIfNeeded()
        }
        
        if sender.isSelected {
            heightLabel.constant += 70
            heihtConstraint.constant -= 50
            view.layoutIfNeeded()
        }
    }
}

