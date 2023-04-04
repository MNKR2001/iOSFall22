//
//  ViewController.swift
//  PracticeaMVC
//
//  Created by Mandadi,Nithin Kunal Reddy on 4/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var patientIssueOI: UITextField!
    @IBOutlet weak var patientNameOI: UITextField!
    var bill=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Bill(_ sender: UIButton) {
        
        var issue = patientIssueOI.text!
        if(issue=="heart")
        {
            bill=1000
        }
        else if(issue=="knee"){
            bill=2000
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var join = segue.identifier
            if(join=="resultsegue")
            {
                //set destination
                var destination=segue.destination as! ResultViewController
                destination.name=patientNameOI.text!
                destination.issue=patientIssueOI.text!
                destination.amount=String(bill)
                
            }
        }
    
}

