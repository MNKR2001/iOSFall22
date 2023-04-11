//
//  ResultViewController.swift
//  BMI Calculator MVC
//
//  Created by Madabhushi,Nikitha Vedant on 4/9/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var ResultOutlet: UILabel!
    
    
    @IBOutlet weak var ImageOutlet: UIImageView!
    
    @IBOutlet weak var heightFt: UILabel!
    
    
    @IBOutlet weak var heightIn: UILabel!
    
    @IBOutlet weak var weightP: UILabel!
    
    var result = ""
    var imag = ""
    var x = ""
    var y = ""
    var z = ""
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
        ResultOutlet.text! = ResultOutlet.text! + result
        ImageOutlet.image = UIImage(named: imag)
        heightFt.text = heightFt.text!+x
        heightIn.text = heightIn.text!+y
        weightP.text = weightP.text!+z
        
    }
    
    
    @IBAction func AnimateBTN(_ sender: UIButton) {
        
        var width = ImageOutlet.frame.width
                width += 40
                var height = ImageOutlet.frame.height
                height += 40
                var m = ImageOutlet.frame.origin.x-20
                var n = ImageOutlet.frame.origin.y-20
                var largeFrame = CGRect(x:m,y:n,width:width,height:height)
                UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4,initialSpringVelocity: 50,animations:{
                    self.ImageOutlet.frame = largeFrame
                })
        
        
    }
    
//    func Animated(_ imageName:String){
//                //making the current image opaque
//                UIView.animate(withDuration: 1, animations:{
//                    self.ImageOutlet.alpha = 0
//                })
//        //Assign the new image with animation and make it transparent.(alpha=1)
//                    UIView.animate(withDuration: 1,delay: 0.5, animations: {
//                        self.ImageOutlet.alpha = 1
//
//                            self.ImageOutlet.image = UIImage(named: imageName)
//
//                    })
        
    
  //              }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var transition = segue.identifier
        
        if (transition == "AnimateSegue")
        {
            var destination = segue.destination
            as!
            AnimateViewController
            destination.img1 = imag
            
            
        
    }
    }

}
