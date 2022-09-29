//
//  ViewController.swift
//  DiscountApp
//
//  Created by Ajay Bandi on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOutlet: UITextField!
    
    @IBOutlet weak var discountOutlet: UITextField!
    
    @IBOutlet weak var resultLabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcDiscount(_ sender: UIButton) {
        //Read the data and convert to Double
        var enteredAmount = Double (amountOutlet.text!)
        
        var enteredDiscRate = Double (discountOutlet.text!)
        
        var priceAfterDiscount =
        enteredAmount!-(enteredAmount!*enteredDiscRate!/100)
        
        resultLabelOutlet.text = "Price after discount is $ \(priceAfterDiscount)"
        
    }
    
}

