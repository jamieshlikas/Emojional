//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    let emojis = ["🥳": "party", "🥰": "love", "🥺": "sad"]
    var customMessages = [
        
        "party": ["woo hoo"],
        "love": ["xoxoxo"],
        "sad": ["feel better soon"]
    ]
    
@IBAction func showMessage(sender: UIButton) {
     let selectedEmotion = sender.titleLabel?.text
    
    let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[0]
    
    let alertController = UIAlertController(title: emojis[selectedEmotion!], message: "\(emojiMessage)", preferredStyle: UIAlertController.Style.alert)
 
alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    present(alertController, animated: true, completion: nil)
}

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
//test
