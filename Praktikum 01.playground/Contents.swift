import UIKit

////////////////////////////
//1
////////////////////////////

//method to return an approximated resulted based on the slope after time t

func approxOutputForT(interval: Double) -> Double{

    var t = 1.0
    var tCount = 0.0
    var a = 1.0
    let b = 20.0
    let n = 20.0

    let deltaT = (b-a)/n
    
    var y: Double = 1000.0
    //904.8374
    
    while tCount <= interval {

        y += (deltaT * g(y))
        
        //update variables
        t += deltaT
        a += 1
        tCount += 1
    }
    
    let compoundInterest = y
    
    return compoundInterest
}

func g(y: Double) -> Double{
    
    return 0.1*y
    
}


//method to return the exact amount after time t

func calculateOutputForT(t: Int) -> Double{
    
    let initialValue = Double(1000)
    
    let rate = 0.1
    
    let eRate = exp(rate)

    
    let compoundInterest = (initialValue/eRate) * exp(rate * Double(t))
    
    return compoundInterest
}

func calcAllIntervals(){
    
    var i = 0
    
    while i < 21 {
        
        //approxOutputForT(Double(i))
        
        //calculateOutputForT(i)
        
        i = i + 1
    }
}


calcAllIntervals()

calculateOutputForT(20)

approxOutputForT(21)


////////////////////////////
//5
////////////////////////////


func calculatePi() -> Double {
    
    let numberOfPoints = 10000
    
    var i = 1
    var lessThanCounter:Double = 0
    var greaterThanCounter = 0
    
    while i <= numberOfPoints {
        
        let x = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
        let y = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
        
        let ratio = x*x + y*y
        
        if (ratio <= 1) {
            lessThanCounter =  lessThanCounter + 1
            
        } else {
            greaterThanCounter = greaterThanCounter + 1
        }
        i = i + 1
    }
    return (lessThanCounter/Double(numberOfPoints)) * 4
}
calculatePi()
//var l: [Double], var d: [Double], var u: [Double], var b: [Double]





