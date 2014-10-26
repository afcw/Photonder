//
//  ViewController.swift
//  Photonder
//
//  Created by Wanda Cheung on 10/19/14.
//  Copyright (c) 2014 Wanda Cheung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  var center : CGPoint = CGPoint()
  var alpha : CGFloat!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.center = self.imageView.center
    self.alpha = 1
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  


}

