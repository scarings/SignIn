//
//  SignIn.swift
//  Pods
//
//  Created by Yovhi on 1/24/17.
//
//

import Foundation

public class SignIn : UILabel {
    public func startBlinking() {
        let options: UIViewAnimationOptions = [.repeat, .autoreverse]
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
