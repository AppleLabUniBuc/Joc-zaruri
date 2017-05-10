//
//  ViewController.swift
//  barbut2
//
//  Created by Marius Ilie on 10/05/17.
//  Copyright © 2017 Marius Ilie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func RollButton(_ sender: UIButton) {
        let rand1 = DiceDataController.rand()
        let rand2 = DiceDataController.rand()
        
        Dice1.image = UIImage(named: "dice\(rand1)")
        Dice2.image = UIImage(named: "dice\(rand2)")
        
        ScoreLabel.text = "Score: \(rand1 + rand2)"
        
        OldScoreLabel.text = "Old score: \(score)"
        
        score = rand1 + rand2
        
    }
    var score = 0
    
    

    @IBOutlet weak var Dice1: UIImageView!
    
    @IBOutlet weak var Dice2: UIImageView!
   
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var OldScoreLabel: UILabel!
    
}

