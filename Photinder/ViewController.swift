//
//  ViewController.swift
//  Photinder
//
//  Created by Bhagchandani, Deepak on 10/19/14.
//  Copyright (c) 2014 Bhagchandani, Deepak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    var center : CGPoint = CGPoint()
    var alpha : CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        self.center = self.imageView.center
        self.alpha = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func imagePan(sender: UIPanGestureRecognizer) {
        
        
    
        
        var translation = sender.translationInView(self.imageView)

        self.imageView.center.x = self.center.x + translation.x
        //self.imageView.center.y = self.center.y + translation.y
        
       // self.imageView.transform = CGAffineTransformMakeTranslation(x, y)
  
        self.imageView.alpha = (1 - abs(translation.x/(self.view.bounds.size.width/2))) + 0.5
        
        var distanceToTranslate = abs(translation.x/(self.view.bounds.size.width/2))
        
        var halfDistance = self.view.bounds.size.width/2
        var rotateBy = translation.x/halfDistance
        
        self.imageView.transform = CGAffineTransformMakeRotation(rotateBy)
        
        
    }
  
}
