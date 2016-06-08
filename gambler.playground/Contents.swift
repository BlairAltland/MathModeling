//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var bets = 0
var wins = 0

var t = 0

var T = 1000
let stake = 5
let goal = 10
var above = 0
var below = 0

func gambler(){
    
    while t < T {
        
        var cash = stake
        
        while (cash > 0 && cash < goal) {
            
            bets = bets + 1
            
            let random = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
            
            if random < 0.5 {
                
                cash = cash + 1
                above = above + 1
                
            }else {
                
                cash = cash - 1
                below = below + 1
            }
            
            if cash == goal {
                
                wins = wins + 1
            }else{
                print
            }
        }
        
        t = t + 1
        
    }
    
    wins / T
    bets / T
    above
    below
    
    
}

gambler()