//
//  CardsViewController.swift
//  codepath_week_5_lab
//
//  Created by Will Dalton on 9/23/15.
//  Copyright © 2015 daltomania. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
    var imageOriginalCenter: CGPoint!

    @IBOutlet weak var profileImageView: UIImageView!
    @IBAction func onImagePanGesture(sender: UIPanGestureRecognizer) {
        let point = sender.locationInView(view)
        let velocity = sender.velocityInView(view)
        
        if sender.state == UIGestureRecognizerState.Began {
            imageOriginalCenter = profileImageView.center
        } else if sender.state == UIGestureRecognizerState.Changed {
            profileImageView.center = CGPoint(x: imageOriginalCenter.x + sender.translationInView(view).x, y: imageOriginalCenter.y + sender.translationInView(view).y)
        } else if sender.state == UIGestureRecognizerState.Ended {
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
