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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
