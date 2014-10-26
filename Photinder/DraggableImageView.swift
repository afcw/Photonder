//
//  DraggableImageView.swift
//  Photinder
//
//  Created by Wanda Cheung on 10/26/14.
//  Copyright (c) 2014 Bhagchandani, Deepak. All rights reserved.
//

import UIKit

class DraggableImageView: UIView {

  @IBOutlet var imageView: UIImageView!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
  
  func setup() {
    var nib = UINib(nibName: "DraggableImageView", bundle: nil)
    nib.instantiateWithOwner(self, options: nil)
    
    imageView.frame = bounds
    self.addSubview(imageView)
  }
  
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
    }
    */

}
