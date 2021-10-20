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
    func labelChangeFunc(changeTextLabel : String,changeColor : UIColor){
        bmiResultLabel.text = changeTextLabel
        bmiResultLabel.textColor = changeColor
    }

    @IBAction func clickedButton(_ sender: Any) {
        if let height = Float (heightTextField.text!){
            if let weight = Float(weightTextField.text!){
                let bmi : Float = weight / ((height * height)/10000)
                bmiLabel.text = String("BMI:\(bmi)")
                bmiLabel.textColor = UIColor.green
                
                // bmi check
                if bmi < 18.5 && bmi >= 0 {
                    labelChangeFunc(changeTextLabel: "UNDERWEIGHT", changeColor: UIColor.blue)
                }
                
                else if bmi < 25 && bmi >= 18.5 {
                    labelChangeFunc(changeTextLabel: "NORMAL", changeColor: UIColor.green)
                 }
                
                else if bmi < 30 && bmi >= 25 {
                    labelChangeFunc(changeTextLabel: "OVERWEIGHT", changeColor: UIColor.yellow)
                }
                
                else if bmi < 35 && bmi >= 30 {
                    labelChangeFunc(changeTextLabel: "OBESE", changeColor: UIColor.orange)
                }
                
                else {
                    labelChangeFunc(changeTextLabel: "EXTREMLY OBESE", changeColor: UIColor.red)
                     }
            }
            
            else {
                labelChangeFunc(changeTextLabel: "Wrong weight value.", changeColor: UIColor.red)
               }
        }
        
        else{
            labelChangeFunc(changeTextLabel: "Wrong height value.", changeColor: UIColor.red)
        }
    }
    
}

