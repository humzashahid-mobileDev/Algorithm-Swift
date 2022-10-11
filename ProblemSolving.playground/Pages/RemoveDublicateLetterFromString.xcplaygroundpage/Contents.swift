//: [Previous](@previous)

import Foundation

//Challenge 6: Remove duplicate letters from a string
//Difficulty: Easy
//Write a function that accepts a string as its input, and returns the same string just with
//duplicate letters removed.
//Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.
//Sample input and output
//• The string “wombat” should print “wombat”.
//• The string “hello” should print “helo”.
//• The string “Mississippi” should print “Misp”.




func removeDublicateLetterfromString(input: String) -> String {
    
    var inputArray = Array(input)
    var totalCount = inputArray.count
    var index : Int = 0
    for i in 0..<inputArray.count {
        var indexJ = 0
        for j in 0..<totalCount {
            if (inputArray[i] == inputArray[j]) {
                
                break
            }
            indexJ = j
        }
        if i == indexJ {
           inputArray[index] = inputArray[i]
            index = index + 1
        }
        
    }
    let characterArray: [Character] = inputArray
    let string = String(characterArray)
    return string
}


func removeDublicateLetterfromString2(string: String) -> String {
        
    var used = [Character]()
    
    for letter in string {
        if !used.contains(letter) {
            used.append(letter)
        }
    }
    return String(used)
}

print(removeDublicateLetterfromString2(string: "wombat"))
print(removeDublicateLetterfromString2(string: "hello"))
print(removeDublicateLetterfromString2(string: "Mississippi"))
