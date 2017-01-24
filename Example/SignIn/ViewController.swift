//
//  ViewController.swift
//  SignIn
//
//  Created by Yovhi on 01/24/2017.
//  Copyright (c) 2017 Yovhi. All rights reserved.
//

import UIKit
import SignIn

class ViewController: UIViewController {
    var isBlinking = false
    let blinkingLabel = SignIn(frame: CGRect(x: 10,y: 20,width: 200,height: 30))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: 10,y: 60,width: 125,height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: "toggleBlinking", for: .touchUpInside)
        view.addSubview(toggleButton)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

