//
//  DiceDataController.swift
//  barbut2
//
//  Created by Marius Ilie on 10/05/17.
//  Copyright © 2017 Marius Ilie. All rights reserved.
//

import Foundation

class DiceDataController
{
    static func rand() -> Int
    {
        let randomDice = Int(arc4random() % 6)
        return  randomDice + 1
    }
}
