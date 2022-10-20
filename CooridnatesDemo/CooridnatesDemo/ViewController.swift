//
//  ViewController.swift
//  CooridnatesDemo
//
//  Created by Ajay Bandi on 10/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let minx = imageViewOutlet.frame.minX;
        
        let miny = imageViewOutlet.frame.minY
        
        print(minx,",",miny)
        
        let maxx = imageViewOutlet.frame.maxX
        let maxy = imageViewOutlet.frame.maxY
        
        print(maxx, ",", maxy)
        
        let midx = imageViewOutlet.frame.midX
        let midy = imageViewOutlet.frame.midY
        
        print(midx, ",", midy)
        
        //Move the location to the upper left corner.
        
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 0
        
        //Move the location to the upper right corner.
        
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 0
        
        //Move the location to the bottom left corner
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 796
        
        //Move the location to th bottom right corner
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 796
        
        
        //Move the location of the object to the center of the view. ((414/2)-50, (896/2)-50)
        imageViewOutlet.frame.origin.x = 157
        imageViewOutlet.frame.origin.y = 398
        
        
        
        
    }


}

