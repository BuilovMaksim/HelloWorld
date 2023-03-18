//
//  ViewController.swift
//  HelloWorld
//
//  Created by Maksim Builov on 14/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    var counterSwitchView = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize: CGFloat = super.view.frame.width
        
        if screenSize <= 375 {
            redView.layer.cornerRadius = 55
            yellowView.layer.cornerRadius = 55
            greenView.layer.cornerRadius = 55
        } else if screenSize <= 414 {
            redView.layer.cornerRadius = 65
            yellowView.layer.cornerRadius = 65
            greenView.layer.cornerRadius = 65
        } else {
            redView.layer.cornerRadius = 70
            yellowView.layer.cornerRadius = 70
            greenView.layer.cornerRadius = 70
        }
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        startButton.layer.cornerRadius = 18
    }
    
    @IBAction func startButtonDidTapped() {
        startButton.setTitle("Next", for: .normal)
        
        if counterSwitchView == 0 {
            redView.alpha = 1
            counterSwitchView += 1
        } else if counterSwitchView == 1 {
            yellowView.alpha = 1
            redView.alpha = 0.3
            counterSwitchView += 1
        } else if counterSwitchView == 2 {
            greenView.alpha = 1
            yellowView.alpha = 0.3
            counterSwitchView += 1
        } else if counterSwitchView == 3 {
            redView.alpha = 1
            greenView.alpha = 0.3
            counterSwitchView -= 2
        } 
    }
    
}


