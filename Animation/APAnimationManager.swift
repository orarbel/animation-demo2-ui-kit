//
//  APAnimationManager.swift
//  Animation
//
//  Created by orarbel@gmail.com on 10/11/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit


/** APAnimationManager gives an easy access to Anima code */
public class APAnimationManager : NSObject {

    public static let sharedInstance = APAnimationManager();

    public static func shared() -> APAnimationManager {
        return self.sharedInstance
    }

    /**
    Holds the theme as configured in Anima.
    On runtime, you may change its values and call APAnimationManager.sharedInstance().theme.apply()
    **/
    public var theme: ANTheme?

    override init() {
        super.init()
        self.setupTheme()
    }

    public func animaStoryboad() -> UIStoryboard {
        return UIStoryboard(name: "Animation", bundle:nil);
    }

    public func initialVC() -> UIViewController {
        return self.animaStoryboad().instantiateInitialViewController()!;
    }

    internal func setupTheme() -> Void {
        self.theme = ANTheme()
        self.theme!.navBarColor          = UIColor(red: 0.98, green:0.98, blue:0.98, alpha:1.0);
        self.theme!.navBarButtonsColor   = UIColor(red: 0.0, green:0.42, blue:1.0, alpha:1.0);
        self.theme!.navBarTitleColor     = UIColor(red: 0.0, green:0.0, blue:0.0, alpha:1.0);
        self.theme!.navBarTitleFontSize  = 16;
        self.theme!.navBarIsTranslucent  = false;
    }

}