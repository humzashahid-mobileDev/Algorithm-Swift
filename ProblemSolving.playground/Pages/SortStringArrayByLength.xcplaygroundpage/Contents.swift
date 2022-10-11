//: [Previous](@previous)

import Foundation
// Problem: Sort a string array by length
// Extend collections with a function that returns an array of strings sorted by their lengths,
// longest first.
// Sample input and output
// The code ["a", "abc", "ab"].challenge39() should return ["abc", "ab", "a"].
// The code ["paul", "taylor", "adele"].challenge39() should return ["taylor", "adele", "paul"].
// The code [String](). should return [].

func sortAStringArrrayByLength(array: [String]) -> [String] {
    if array.count == 0 {
        return []
    }
        
    var inputArray = array
    for i in 0..<inputArray.count - 1 {
        for j in 1..<inputArray.count   {
            if Array(inputArray[i]).count <= Array(inputArray[j]).count {
                var temp = inputArray[j]
                inputArray[j] = inputArray[i]
                inputArray[i] = temp
            }
        }
        //print(inputArray)
    }
    print(inputArray)
    return inputArray
}

sortAStringArrrayByLength(array: ["a", "abc", "ab"])
sortAStringArrrayByLength(array: ["paul", "taylor", "adele"])
sortAStringArrrayByLength(array: [])
