//
//  ViewController.swift
//  TrafLightApp
//
//  Created by Теона Магай on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.size.width/2
        yellowView.layer.cornerRadius = yellowView.frame.size.width/2
        greenView.layer.cornerRadius = greenView.frame.size.width/2
    }
    
    @IBAction func startButtonPressed() {
        if redView.alpha != 1 &&
           yellowView.alpha != 1 &&
           greenView.alpha != 1 {
            startButton.setTitle("Next", for: .normal)
            redView.alpha = 1
        } else if redView.alpha == 1 &&
           yellowView.alpha != 1 &&
           greenView.alpha != 1 {
            yellowView.alpha = 1
            redView.alpha = 0.2
     } else if redView.alpha != 1 &&
           yellowView.alpha == 1 &&
           greenView.alpha != 1 {
            greenView.alpha = 1
            yellowView.alpha = 0.2
     } else if redView.alpha != 1 &&
           yellowView.alpha != 1 &&
           greenView.alpha == 1 {
            redView.alpha = 1
            greenView.alpha = 0.2
     }
    }
    
}

