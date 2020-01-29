//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Archit Garg on 29/01/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue : Float = 0
    
    mutating func calculateBMI(height : Float, weight : Float) {
        bmiValue = weight / (height * height)
    }
    
    func getBMIValue() -> String{
        return String(format : "%.1f", bmiValue)
    }
    
}
