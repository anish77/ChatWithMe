//
//  ViewController.swift
//  ChatWithMe
//
//  Created by Ana Cvasniuc on 13/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleAnimated()
        
        
        
    }
    
    /// Create the title animated
    func titleAnimated(){
        
        titleLabel.text = ""
        var charIndex = 0
        let titleText = "Chat With Me"
        
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIndex), repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
    
}

