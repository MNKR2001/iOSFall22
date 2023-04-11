//
//  SecondViewController.swift
//  SampleBMI App
//
//  Created by Sindam,Suresh on 4/10/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    

    @IBOutlet weak var bmiValueOutlet: UILabel!
    
    
    @IBOutlet weak var imgOutlet: UIImageView!
    
    
    var bmiValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValueOutlet.text = bmiValue
        self.imgOutlet.frame.origin.x = 600
        imgOutlet.frame.origin.y = 500
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0) {
            self.imgOutlet.frame.origin.x = 30
            self.imgOutlet.frame.origin.y = 500
        }
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
