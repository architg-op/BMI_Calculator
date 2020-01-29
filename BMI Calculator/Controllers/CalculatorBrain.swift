//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Archit Garg on 29/01/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmiValue : BMI?
    
    mutating func calculateBMI(height : Float, weight : Float) {
        let bmi = weight / (height * height)
        if bmi < 18.5 {
            bmiValue = BMI(value: bmi, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmi < 24.9 {
            bmiValue = BMI(value: bmi, advice: "Fit as Fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmiValue = BMI(value: bmi, advice: "Eat less pies!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
    
    func getBMIValue() -> String{
        return String(format : "%.1f", bmiValue?.value ?? "0.0")
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
