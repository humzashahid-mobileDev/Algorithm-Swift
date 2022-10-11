//: [Previous](@previous)

import Foundation

//Difficulty: Tricky
//Write a function that accepts an integer as its parameter and returns true if the number is prime.
//Tip: A number is considered prime if it is greater than one and has no positive divisors other than 1 and itself.
//Sample input and output
//• The number 11 should return true.
//• The number 13 should return true.
//• The number 4 should return false.
//• The number 9 should return false.
//• The number 16777259 should return true.


func isPRime(val: Int) ->Bool {
     
    for i in 2..<val {
        if (val % i == 0) {
            return false
        }
    }
    return true
}

isPRime(val : 11)
isPRime(val : 12)
