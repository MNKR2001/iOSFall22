//
//  ResultViewController.swift
//  Exam2Sample
//
//  Created by Bobbili,Meghana on 4/9/23.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        DisplayImage.image = UIImage(named: outputImage)
        displayLabel.text = result
        
    }
    
    @IBOutlet weak var DisplayImage: UIImageView!
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var outputImage = ""
    var result = ""
    
    @IBAction func MoveButton(_ sender: Any) {
        
        
        var x = DisplayImage.frame.origin.x
        var y = DisplayImage.frame.origin.y
        
        var x1 = displayLabel.frame.origin.x
        var y1 = displayLabel.frame.origin.y
        
        DisplayImage.frame.origin.x = x1
        DisplayImage.frame.origin.y = y1
        
        displayLabel.frame.origin.x = x
        displayLabel.frame.origin.y = y
        
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
