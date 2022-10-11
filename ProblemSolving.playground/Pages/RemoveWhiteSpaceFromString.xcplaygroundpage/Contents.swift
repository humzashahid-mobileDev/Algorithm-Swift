//: [Previous](@previous)

import Foundation
//Write a function that returns a string with any consecutive spaces replaced with a single space.
//Sample input and output
//I’ve marked spaces using “[space]” below for visual purposes:
//• The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
//• The string “[space][space][space][space]a” should return “[space]a”.
//• The string “abc” should return “abc”.



func removeExtaSpace( input: String) -> String {
    var inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        if (i + 1 < inputArray.count) {
            if  inputArray[i] == " " && inputArray[i+1] == " "{
                inputArray.remove(at: i)
            }
        }
        
    }
    let characterArray: [Character] = inputArray
    let string = String(characterArray)
    return string
}

removeExtaSpace(input: "a  b   c")
removeExtaSpace(input: "a  b   d  c xs ")

