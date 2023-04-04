//
//  ResultViewController.swift
//  PracticeaMVC
//
//  Created by Mandadi,Nithin Kunal Reddy on 4/3/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var EnteredIssue: UILabel!
    @IBOutlet weak var NameEntered: UILabel!
    @IBOutlet weak var Amount: UILabel!
    var name=""
    var issue=""
    var amount=""
    override func viewDidLoad() {
        super.viewDidLoad()
        EnteredIssue.text!+=issue
        NameEntered.text!+=name
        Amount.text!+=amount

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
