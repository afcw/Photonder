//
//  CardsViewController.swift
//  Photonder
//
//  Created by Wanda Cheung on 10/19/14.
//  Copyright (c) 2014 Wanda Cheung. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

  @IBOutlet weak var navImageView: UIImageView!
  
  @IBOutlet weak var actionImageView: UIImageView!
  
  @IBOutlet weak var cardImageView: UIImageView!
  
  var center: CGPoint = CGPoint()
  var alpha: CGFloat!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      self.center = self.cardImageView.center
      self.alpha = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func onImageDrag(sender: UIPanGestureRecognizer) {
    
    var translation = sender.translationInView(self.cardImageView)
    
    self.cardImageView.center.x = self.center.x + translation.x
    self.cardImageView.alpha = (1 - abs(translation.x/(self.view.bounds.size.width/2))) + 0.5
    

    
  }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
