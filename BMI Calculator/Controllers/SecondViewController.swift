//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Archit Garg on 29/01/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController : UIViewController {
    var bmiValue : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
