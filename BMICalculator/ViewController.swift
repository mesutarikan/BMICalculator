//
//  ViewController.swift
//  BMICalculator
//
//  Created by mesut  on 20.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func clickedButton(_ sender: Any) {
        if let height = Float (heightTextField.text!){
            if let weight = Float(weightTextField.text!){
                let bmi : Float = weight / ((height * height)/10000)
                bmiLabel.text = String("BMI:\(bmi)")
                bmiLabel.textColor = UIColor.green
                
                // bmi check
                if bmi < 18.5 && bmi >= 0 {
                    bmiResultLabel.text = "UNDERWEIGHT"
                    bmiResultLabel.textColor = UIColor.blue
                   
                }
                else if bmi < 25 && bmi >= 18.5 {
                    bmiResultLabel.text = "NORMAL"
                    bmiResultLabel.textColor = UIColor.green
                 
                }
                else if bmi < 30 && bmi >= 25 {
                    bmiResultLabel.text = "OVERWEIGHT"
                    bmiResultLabel.textColor = UIColor.yellow
                    
                }
                else if bmi < 35 && bmi >= 30 {
                    bmiResultLabel.text = "OBESE"
                    bmiResultLabel.textColor = UIColor.orange
                    
                }
                else {
                    bmiResultLabel.text = "EXTREMLY OBESE"
                    bmiResultLabel.textColor = UIColor.red
                   
                }
            }
            else {
                bmiResultLabel.text = "Wrong weight value."
                
            }
    }
        else{
            bmiResultLabel.text = "Wrong height value."
           
        }
    }
    
}

