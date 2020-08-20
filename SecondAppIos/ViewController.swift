//
//  ViewController.swift
//  SecondAppIos
//
//  Created by Rasikon on 20.08.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    @IBOutlet weak var controlButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.alpha = 0.3
        greenColorView.alpha = 0.3
        yellowColorView.alpha = 0.3
        redColorView.layer.cornerRadius = 60
        greenColorView.layer.cornerRadius = 60
        yellowColorView.layer.cornerRadius = 60
        controlButton.layer.cornerRadius = 10
    }
    

    @IBAction func touchingOnTheLight() {
        if controlButton.currentTitle == "START" {
           redColorView.alpha = 1
           controlButton.setTitle("NEXT", for: .normal)
        } else if Float(redColorView.alpha) == 1 {
            redColorView.alpha = 0.3
            yellowColorView.alpha = 1
        } else if Float(yellowColorView.alpha) == 1 {
            yellowColorView.alpha = 0.3
            greenColorView.alpha = 1
        } else if Float(greenColorView.alpha) == 1 {
            greenColorView.alpha = 0.3
            redColorView.alpha = 1
        }
    }
}


