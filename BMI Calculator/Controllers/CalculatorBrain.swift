//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nava Kanth on 7/15/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    
    func getBMIValue() -> String{
        
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1Decimal
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float){
         let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "UnderWeight, eat more", color: UIColor.systemBlue)
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit a fiddle!", color: UIColor.systemGreen)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "overweight", color: UIColor.systemOrange)
        }
        
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "0.0"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.systemBlue
    }
    
}
