//
//  PhotoMetaViewController.swift
//  Photinder
//
//  Created by Wanda Cheung on 10/26/14.
//  Copyright (c) 2014 Bhagchandani, Deepak. All rights reserved.
//

import UIKit

class PhotoMetaViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!

    var pmImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NSLog("viewDidLoad: begin")
        photoImageView.image = pmImage
        NSLog("viewDidLoad: end")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
