//
//  CardImageView.swift
//  codepath_week_5_lab
//
//  Created by Will Dalton on 9/23/15.
//  Copyright © 2015 daltomania. All rights reserved.
//

import UIKit

class CardImageView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var cardImageView: UIImageView!

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        // standard initialization logic
        let nib = UINib(nibName: "CardImageView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
            
        // custom initialization logic
    }
    
    var image: UIImage? {
        get { return cardImageView.image }
        set { cardImageView.image = newValue }
    }

}
