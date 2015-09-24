//
//  CardsViewController.swift
//  codepath_week_5_lab
//
//  Created by Will Dalton on 9/23/15.
//  Copyright © 2015 daltomania. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
    var cardView: CardImageView!
    var imageOriginalCenter: CGPoint!

    @IBAction func onCardImagePanGesture(sender: UIPanGestureRecognizer) {
        if sender.state == UIGestureRecognizerState.Began {
            imageOriginalCenter = cardView.center
        } else if sender.state == UIGestureRecognizerState.Changed {
            cardView.center = CGPoint(x: imageOriginalCenter.x + sender.translationInView(view).x, y: imageOriginalCenter.y + sender.translationInView(view).y)
        } else if sender.state == UIGestureRecognizerState.Ended {
            cardView.center = imageOriginalCenter
        }
    }

    @IBAction func onCardImageTapGesture(sender: UITapGestureRecognizer) {
        performSegueWithIdentifier("profileSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardView = CardImageView(frame: CGRectMake(0, 65, view.bounds.width, 200))
        cardView.image = UIImage(named: "ryan")
        view.addSubview(cardView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation
    */
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destinationViewController = segue.destinationViewController as! ProfileViewController
        destinationViewController.image = UIImage(named: "ryan")
    }
}
