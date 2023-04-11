//
//  ViewController.swift
//  SampleBMI App
//
//  Created by Nikenduku Naa Peru on 4/10/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    
    var calculatedBMI = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        
        let height = Double(heightField.text!)
        let weight = Double(weightField.text!)
        
        calculatedBMI = (weight!/(height! * height!))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let segueName = segue.identifier
        if(segueName == "resultSegue") {
            let destination = segue.destination as! SecondViewController
            destination.bmiValue = String(calculatedBMI)
            
        }
    }
    
    
}

