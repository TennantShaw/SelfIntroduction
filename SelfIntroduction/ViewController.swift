//
//  ViewController.swift
//  SelfIntroduction
//
//  Created by Tennant Shaw on 5/9/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    @IBAction func interestButton(_ sender: UIButton) {
        InfoViewController.image = "Life"
    }
    
    @IBAction func homeButton(_ sender: UIButton) {
        InfoViewController.image = "Family"
    }
    
    @IBAction func bookButton(_ sender: UIButton) {
        InfoViewController.image = "TheWheelOfTime"
    }
    
    @IBAction func outdoorButton(_ sender: UIButton) {
        InfoViewController.image = "CampingUnderTheStars"
    }
    
    @IBAction func madLibButton(_ sender: UIButton) {
        InfoViewController.image = "MadLibs"
    }
    
}

