//
//  ViewController.swift
//  NextStep
//
//  Created by Davit Muradyan on 19.06.21.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var inspiringLabel: UILabel!
    
    let text = "Next Step"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        typingOrgName()
    }

    

    
    @objc func transfer() {
        
        performSegue(withIdentifier: "Segue1", sender: nil)
    }
    
    func typingOrgName() {
        var index = 0.0
        
        for char in text {
            
            Timer.scheduledTimer(withTimeInterval: 0.05 * index, repeats: false) { timer in
                
                self.inspiringLabel.text?.append(char)
            }
            index += 1
        }
    }

}

