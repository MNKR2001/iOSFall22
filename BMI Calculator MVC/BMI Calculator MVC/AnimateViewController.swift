//
//  AnimateViewController.swift
//  BMI Calculator MVC
//
//  Created by Madabhushi,Nikitha Vedant on 4/9/23.
//

import UIKit

class AnimateViewController: UIViewController {
    
    var img1 = ""
    @IBOutlet weak var AnimateImageOutlet: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        AnimateImageOutlet.image = UIImage(named:img1)
    }
    

    @IBAction func shakeMeBTN(_ sender: UIButton) {
        var width = AnimateImageOutlet.frame.width
                width += 40
                var height = AnimateImageOutlet.frame.height
                height += 40
                var m = AnimateImageOutlet.frame.origin.x-20
                var n = AnimateImageOutlet.frame.origin.y-20
                var largeFrame = CGRect(x:m,y:n,width:width,height:height)
                UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4,initialSpringVelocity: 50,animations:{
                    self.AnimateImageOutlet.frame = largeFrame
                })
        
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
