//
//  ViewController.swift
//  FirstFourApp
//
//  Created by Ajay Bandi on 9/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputOutlet: UITextField!
   
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submitButtonClicked(_ sender: UIButton) {
        var name = inputOutlet.text!;
        
        if (name.count >= 4){
            var fourChar = name[name.startIndex ..< name.index(name.startIndex, offsetBy: 4)]
            //var fourChar = name.prefix(4)
            displayLabel.text = "\(fourChar)"
        }
        
    }
}

