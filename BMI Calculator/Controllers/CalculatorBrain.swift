//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdelrahman Elsayed on 9/18/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmiValue: BMI?
    
    func getIBM() -> String {
        return String(format: "%.1f", bmiValue?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmiValue?.advice ?? ""
    }
    func getColor() -> UIColor {
        return bmiValue?.color ?? .clear
    }
    
    mutating func calculateIBM(height: Float, weight: Float){
        
        let bmi = (weight / pow(height, 2))
        
        switch bmi {
        case ..<18.5:
            bmiValue = BMI(value: bmi, advice: "Eat more pies!", color: #colorLiteral(red: 0.2692276835, green: 0.7684064507, blue: 0.8740457892, alpha: 1))
        case 18.5 ... 24.9:
            bmiValue = BMI(value: bmi, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        case 24.9...:
            bmiValue = BMI(value: bmi, advice: "Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        default:
           print("error occured")
        }
    }
    
    
    
}
