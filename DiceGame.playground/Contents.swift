//: Playground - noun: a place where people can play

import UIKit



var win = 0
var loss = 0
var numberOfRounds = 0

func diceRoll() -> Int{
    
    let randomNumber = Int(arc4random_uniform(6) + 1)
    
    return randomNumber
    
}

func diceGame(timesToPlay: Int) {
    
    var i = 0

    while i <= timesToPlay {
        
        var attackRoll = 0
        
        let firstAttackerRoll = diceRoll()
        let secondAttackerRoll = diceRoll()
        
        let defenderRoll = diceRoll()
        
        if firstAttackerRoll > secondAttackerRoll {
            
            attackRoll = firstAttackerRoll
            
        } else {
            
            attackRoll = secondAttackerRoll
        }
        
        if attackRoll > defenderRoll {
            
            win += 1
            
        } else {
            
            loss += 1
        }
        
        numberOfRounds += 1
        i += 1
    }
    
    let odds: Double = Double(win)/Double(numberOfRounds)
}

diceGame(timesToPlay: 100000)