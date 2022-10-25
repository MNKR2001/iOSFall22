//
//  ResultViewController.swift
//  DiscountDemoMVC
//
//  Created by Ajay Bandi on 10/25/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var displayAmountOutlet: UILabel!
    
    @IBOutlet weak var displayDiscRateOutlet: UILabel!
  
    
    @IBOutlet weak var displayResultOutlet: UILabel!
    
    var amount = ""
    var discRate = ""
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayAmountOutlet.text = displayAmountOutlet.text! + amount
        
        
        displayDiscRateOutlet.text = displayDiscRateOutlet.text! +
            discRate
        
        
        displayResultOutlet.text = displayResultOutlet.text! + result

        // Do any additional setup after loading the view.
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
