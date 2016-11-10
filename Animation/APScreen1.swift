//
//  APScreen1.swift
//  Animation
//
//  Created by orarbel@gmail.com on 10/11/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit

public class APScreen1 : ANViewController {
    
    @IBOutlet weak var label1: UILabel?

    

    @IBAction func label1Tap(sender: Any?) {
        self.animation1();
    }

    internal func animation1() -> Void {

        var options: UIViewAnimationOptions;

        // Animating self.label1
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.4, delay:0.0, options:options, animations: {

            self.label1!.anRemoveAllFrameConstraints();
            self.label1!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:-0.5, multiplier:0.0);
            self.label1!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:200.0, multiplier:0);
            self.label1!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:40.0, multiplier:0);
            self.label1!.anSetRelativeConstraint(ANRelativeConstraintTop , constant:264.0, multiplier:0);
            self.label1!.alpha           = 1.0;
            self.label1!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.label1!.anBorderColor   = UIColor(colorLiteralRed: 0.0, green:0.0, blue:0.0, alpha:0.0);
            self.label1!.anCornerRadius  = 0.0;
            self.label1!.anBorderWidth   = 0.0;
            self.label1!.anRotation      = 0.0;
            self.label1!.isHidden        = false;
            self.label1!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

    }

}