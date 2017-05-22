//
//  infoViewController.swift
//  SelfIntroduction
//
//  Created by Tennant Shaw on 5/21/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    static var image = ""
    var verb = ""
    var noun = ""
    var generateButtonTapped = false
    
    
    // MARK: - Outlets
    @IBOutlet var textView: UITextView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var verbTextField: UITextField!
    @IBOutlet var nounTextField: UITextField!
    @IBOutlet var generateButton: UIButton!
    
    // MARK: - Actions
    
    @IBAction func generateMadLibButton(_ sender: UIButton) {
        if verbTextField.text == "" && nounTextField.text == "" {
            verbTextField.placeholder = "Enter verb here"
            nounTextField.placeholder = "Enter noun here"
        } else {
            verb = verbTextField.text!
            noun = nounTextField.text!
            generateButtonTapped = true
            updateTextView(input: "MadLibs")
            generateButton.alpha = 0
        }
    }
    
    // MARK: - Methods
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func updateTextView(input: String) {
        switch input {
        case "Life":
            textView.text = "I find interest in life. In the beauty that surrounds me. It brings joy to my days and fills my dreams with wonders."
        case "Family":
            textView.text = "This is where my home is. Where they are my heart belongs."
        case "CampingUnderTheStars":
            textView.text = "I love a good weekend under the stars. Makes me feel connected and free all at once."
        case "TheWheelOfTime":
            textView.text = "After several attempts I made it through the wheel of time. Each attempt has been full of discoveries that I hope to find in my own life."
        case "MadLibs":
            adjustVisibility()
            if generateButtonTapped == false {
                textView.text = "Time for some Mad Libs. Enter a verb, then enter a person's name. Tap Generate when you are done!"
            } else {
                textView.text = "The last time that my freind \(noun), \(verb)(s/ed), he feel asleep mid-\(verb)"
            }
        default:
            break
        }
    }
    
    func adjustVisibility() {
        if InfoViewController.image == "Life" || InfoViewController.image == "Family" || InfoViewController.image == "CampingUnderTheStars" || InfoViewController.image == "TheWheelOfTime" || generateButtonTapped == true {
            verbTextField.alpha = 0
            nounTextField.alpha = 0
            generateButton.alpha = 0
        } else if InfoViewController.image == "MadLibs" && generateButtonTapped == false {
            verbTextField.alpha = 1
            nounTextField.alpha = 1
            generateButton.alpha = 1
        }
    }
    
    // MARK: - View Life Cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(InfoViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        self.navigationItem.title = InfoViewController.image
        imageView.image = UIImage(named: InfoViewController.image)
        updateTextView(input: InfoViewController.image)
        adjustVisibility()
    }

}
