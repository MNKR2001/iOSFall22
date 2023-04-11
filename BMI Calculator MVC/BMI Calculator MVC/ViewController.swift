//
//  ViewController.swift
//  BMI Calculator MVC
//
//  Created by Madabhushi,Nikitha Vedant on 4/9/23.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var HeightFeet: UITextField!
    

    @IBOutlet weak var HeightInches: UITextField!
    
    @IBOutlet weak var Weight: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    var img = ""
    var display = ""
    @IBAction func BMIBtn(_ sender: UIButton) {
        //reading the height in feet and storing it in a variable heightFT
                var heighFT = Double(HeightFeet.text!) ?? 0.0
                
                //reading the height in inches and storing it in a variable heightInches
                
        var heightInches = Double(HeightInches.text!) ?? 0.0
                
                //converting the height in feet to inches to calculate the total height in inches
                
        var height = (heighFT*12) + heightInches
                
                //reading the weight in lbs and storing it in a variable weight
                
        var weight = Double(Weight.text!) ?? 0.0
                
                // calculating the BodyMassIndex based on the givn formula
                
        var bm = (703*weight) / (height*height)
                
                //rounding up the BMI to one decimal value
                
        var BMI = round(bm * 10)/10.0
                
                //Displaying the image and the output based on the BMI
                
                if(BMI <= 18.5){
                    img = "underWeight"
                    display = "Your Body Mass Index is \(BMI).\nThis is considered UnderWeight."
                }
                else if(BMI >= 18.6 && BMI
                          <= 24.9){
                    img = "normal"
                    display = "Your Body Mass Index is \(BMI).\nThis is considered Normal👍."
                }
                else if( BMI >= 25 && BMI <= 29.9 ){
                   img = "overWeight"
                    display = "Your Body Mass Index is \(BMI).\nThis is considered OverWeight."
                }
                else if(BMI >= 30.0){
                    img = "obese"
                    display = "Your Body Mass Index is \(BMI).\nThis is considered Obesity."
                }
                
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var transition = segue.identifier
        
        if (transition == "ResultSegue")
        {
            var destination = segue.destination
            as!
            ResultViewController
            destination.x = HeightFeet.text!
            destination.y = HeightInches.text!
            destination.z = Weight.text!
            destination.imag = img
            destination.result = display
            
            
        }
    }
    
}

