//: [Previous](@previous)

import Foundation
//
//Difficulty: Easy
//Create a function that accepts positive two integers, and raises the first to the power of the
//second.
//Tip: If you name your function myPow() or challenge18(), you’ll be able to use the
//built-in pow() for your tests. The built-in pow() uses doubles, so you’ll need to typecast.
//Sample input and output
//• The inputs 4 and 3 should return 64, i.e. 4 multiplied by itself 3 times.
//• The inputs 2 and 8 should return 256, i.e. 2 multiplied by itself 8 times.



func power(val: Int, pow: Int) -> Int {
    
    var result = val
    
    for i in 1..<pow {
       result =  result * val
    }
 
    
    return result
}

power(val: 4, pow: 3)

power(val: 2, pow: 8)
