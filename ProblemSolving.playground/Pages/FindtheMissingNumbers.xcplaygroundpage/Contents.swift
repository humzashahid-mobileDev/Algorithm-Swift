//: [Previous](@previous)

import Foundation

//Create a function that accepts an array of unsorted numbers from 1 to 100 where zero or more
//numbers might be missing, and returns an array of the missing numbers.
//Sample input and output
//If your test array were created like this:
//Then your method should [7, 21, 26], because those are the numbers missing from the array.

func findTheMissingNumbers(input: [Int]) -> [Int] {
    var completeArray = Array(1...10)
    var missingNumbers = [Int]()
    for obj in completeArray {
        if input.contains(obj) {
            //
        } else {
            missingNumbers.append(obj)
        }
    }
    return missingNumbers
}
var data: [Int] = Array(1...10)
data.remove(at: 1)
data.remove(at: 2)
data.remove(at: 3)
findTheMissingNumbers(input: data)
