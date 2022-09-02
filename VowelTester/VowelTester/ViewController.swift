//
//  ViewController.swift
//  VowelTester
//
//  Created by Ajay Bandi on 8/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enteredText: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submitButtonClicked(_ sender: UIButton) {
        //Read the text from the text field and assign it to a local variable.
        var text = enteredText.text!
        
        //Check the text has vowel or not.
        if(text.contains("a") ||
           text.contains("e")){
            //Vowel is in the text
            displayLabel.text = "The text has vowel."
        }
        else{
            displayLabel.text = "No vowels found!"
        }
        
        
    }
}

