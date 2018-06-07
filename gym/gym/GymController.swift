//
//  GymController.swift
//  gym
//
//  Created by mehdi dridi on 24.05.18.
//  Copyright © 2018 mehdi dridi. All rights reserved.
//

import Foundation
import UIKit

class GymController: UIViewController {
    
    enum Exercices: String {
        case Dance = "Dance"
        case Run = "Run"
        case Jump = "Jump"
        
    }
    
    @IBOutlet weak var exerciceText: UILabel!
    
    
    var repeatMe = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func StopPressed(_ sender: Any) {
        
        repeatMe = false
        self.exerciceText.text = "Press Start"
        
    }
    
    
    @IBAction func startPressed(_ sender: Any) {
        
        repeatMe = true
        
        Timer.scheduledTimer(withTimeInterval: 5, repeats: repeatMe) { (fireTimers) in
            let exercice = arc4random_uniform(5) + 1;
            
            switch exercice{
            case 1:
                self.exerciceText.text = Exercices.Dance.rawValue
            case 2:
                self.exerciceText.text = Exercices.Run.rawValue
            case 3:
                self.exerciceText.text = Exercices.Jump.rawValue
            default:
                print("wassap")
            }
            
        }
        
        
    }
    
    
}

