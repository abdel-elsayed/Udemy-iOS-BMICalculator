//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Abdelrahman Elsayed on 9/18/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var BMILabelText: UILabel!
    @IBOutlet weak var advieLabel: UILabel!
    @IBAction func recalulateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabelText.text = bmiValue
        advieLabel.text = advice
        self.view.backgroundColor = color
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
