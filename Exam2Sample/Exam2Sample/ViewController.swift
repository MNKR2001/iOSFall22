//
//  ViewController.swift
//  Exam2Sample
//
//  Created by Bobbili,Meghana on 4/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var HeightInputField: UITextField!
    
    
    @IBOutlet weak var WeightInputField: UITextField!
    
    var bmiIndex = 0.0
    var ResultImage = ""
    var resultLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func bmiButton(_ sender: Any) {
        
        var height = Double(HeightInputField.text!) ?? 1.0
        var weight = Double(WeightInputField.text!) ?? 0.0
        
        bmiIndex = round((weight / (pow(height,2)))*10)/10
        
        ResultImage = "bmi"
        
        if (25 <= bmiIndex && bmiIndex <= 30){
            resultLabel = "Your BMI Index is \(bmiIndex). It says that you have Over Weight"
        }
        else if (bmiIndex < 18.5){
            resultLabel = "Your BMI Index is \(bmiIndex). It says that you have Under Weight"
        }
        else if (18.5 <= bmiIndex && bmiIndex <= 24.5){
            resultLabel = "Your BMI Index is \(bmiIndex). It says that you have Normal Weight"
        }
        else if (35 <= bmiIndex && bmiIndex <= 39.5){
            resultLabel = "Your BMI Index is \(bmiIndex). It says that you have Severe Obesity"
        }
        else if (40 <= bmiIndex && bmiIndex <= 44.5){
            resultLabel = "Your BMI Index is \(bmiIndex). It says that you have morbid obesity"
        }
        
        else if (45 <= bmiIndex && bmiIndex <= 50){
            resultLabel = "Your BMI Index is \(bmiIndex).. It says that you have Super Obesity"
        }
    
        else{
            ResultImage = "error"
            resultLabel = "Enter Valid ddtails"
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            var transition = segue.identifier
            
            if transition == "ResultSegue"{
                var destination = segue .destination as! ResultViewController
                
                destination.outputImage = ResultImage
                destination.result = resultLabel
                
                HeightInputField.text = ""
                WeightInputField.text = ""
                
            }
        }
    
    
}

