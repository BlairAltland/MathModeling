//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var newPlant = 25

var numberOfDays = 0

var isPlantOpen = true

var newPlantOpenedCounter = 0
var newPlantFailedCounter = 0

func dailyUnitDelivery2() -> Int {
    
    var returnValue = 0
    
    //let randomNumber = Float(arc4random_uniform(UInt32(0.5) + UInt32(0.0)))
    let randomNumber: Double = Double(arc4random_uniform(10) + 1)
    let randomPercentage = randomNumber/10
    
    if randomPercentage == 0.8 || randomPercentage == 0.7 || randomPercentage == 0.6 {
        
        returnValue = 2
    } else if randomPercentage == 0.5 || randomPercentage == 0.4 || randomPercentage == 0.3 || randomPercentage == 0.2 || randomPercentage == 0.1 {
        
        returnValue = 1
    }
    
    return returnValue
}


func simulateFactory() {
    
    var i = 0
    while i < 1000 {
        
        numberOfDays = 0
        
        while isPlantOpen == true {
            
            newPlant -= 1

            let unitDelivery = dailyUnitDelivery2()
            newPlant += unitDelivery
            
            if newPlant >= 100 {
                
                isPlantOpen == false
                newPlantOpenedCounter += 1
                numberOfDays
                break
                
            } else if newPlant == 0 {
                
                newPlantFailedCounter += 1
                numberOfDays
                break
                
                
            }
            numberOfDays += 1
        }

        
        i += 1
        isPlantOpen = true
        newPlant = 0
    }
    
    newPlantOpenedCounter
}

simulateFactory()
