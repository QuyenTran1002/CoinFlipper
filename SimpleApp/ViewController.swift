//
//  ViewController.swift
//  SimpleApp
//
//  Created by Quyen Tran on 11/1/17.
//  Copyright © 2017 Quyen Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emoji: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBAction func buttonTapped(_ sender: Any) {
        let randomVariable = arc4random_uniform(2)
        if (randomVariable == 0) {
            label.text = "HEAD"
            emoji.text = "😊"
        } else {
            label.text = "TAIL"
            emoji.text = "🙈"
        }
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        label.text = ""
        emoji.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resetTapped(self)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

