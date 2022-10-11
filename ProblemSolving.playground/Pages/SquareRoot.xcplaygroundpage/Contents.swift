//: [Previous](@previous)

import Foundation

//var greeting = "Hello, playground"
//
//Challenge 25: Calculate a square root by hand
//Difficulty: Taxing
//Write a function that returns the square root of a positive integer, rounded down to the nearest
//integer, without using sqrt().
//Sample input and output
//• The number 9 should return 3.
//• The number 16777216 should return 4096.
//• The number 16 should return 4.
//• The number 15 should return 3.


func squreRoot(input : Int) -> Int {

    
    for i in 0...input / 2 + 1 {
        if i * i > input {
            return i - 1
        }
    }

    return 0
}
squreRoot(input: 9)
