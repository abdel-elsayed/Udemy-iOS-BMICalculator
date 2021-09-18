//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    
    @IBOutlet weak var heightSliderValue: UISlider!
    @IBOutlet weak var weightSliderValue: UISlider!
    
    var CalcBrain = CalculatorBrain()
    
    // changing the text in the label above the slider when the slider value is changed
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightText.text = "\(String(format: "%.2f", sender.value))m"
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightText.text = "\(String(format: "%.0f", sender.value))kg"
    }
    
    
    @IBAction func CalculateButtonPressed(_ sender: UIButton) {
        
        CalcBrain.calculateIBM(height: heightSliderValue.value, weight: weightSliderValue.value)
        self.performSegue(withIdentifier: "gotToResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiValue = CalcBrain.getIBM()
            resultVC.advice = CalcBrain.getAdvice()
            resultVC.color = CalcBrain.getColor()
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

