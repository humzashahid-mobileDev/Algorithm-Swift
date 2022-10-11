//: [Previous](@previous)

import Foundation

//Challenge 3: Do two strings contain the same characters?
//Difficulty: Easy
//Write a function that accepts two String parameters, and returns true if they contain the same
//characters in any order taking into account letter case.
//Sample input and output
//• The strings “abca” and “abca” should return true.
//• The strings “abc” and “cba” should return true.
//• The strings “ a1 b2 ” and “ b1 a2 ” should return true. • The strings “abc” and “abca” should return false.
//• The strings “abc” and “Abc” should return false.
//• The strings “abc” and “cbAa” should return false.
//• The strings “abcc” and “abca” should return false.


func bothStringContainsSameLetter(input: String, input2: String) -> Bool {
    var inputArray = Array(input)
    var inputArray2 = Array(input2)
    
    if inputArray.count != inputArray2.count {
        return false
    }
    var check : Bool = true
    for letter in inputArray {
        var lettCount = 0
        var lettCount2 = 0
        for char in inputArray {
            if char == letter {
                lettCount = lettCount + 1
            }
        }
        for char in inputArray2 {
            if char == letter {
                lettCount2 = lettCount2 + 1
            }
        }
        if lettCount != lettCount2 {
            return false
        }
    }
    return check
}


func bothStringContainsSameLetter2(input: String, input2: String) -> Bool {
    var checkString = input2
    for letter in input {
        if let index = checkString.index(of: letter)  {
            checkString.remove(at: index)
        } else {
            return false
        }
    }
    if checkString.count == 0 {
        return true
    }
    return false
}

func bothStringContainsSameLetter3(input: String, input2: String) -> Bool {
    
    return input.sorted() == input2.sorted()
}

bothStringContainsSameLetter(input:"abca", input2 : "abca");
bothStringContainsSameLetter(input:"abc", input2 : "cba");
bothStringContainsSameLetter(input:" a1 b2 ", input2 : " b1 a2 ");
bothStringContainsSameLetter(input:"abc", input2 : "Abc");
bothStringContainsSameLetter(input:"abcc", input2 : "abca");




bothStringContainsSameLetter2(input:"abca", input2 : "abca");
bothStringContainsSameLetter2(input:"abc", input2 : "cba");
bothStringContainsSameLetter2(input:" a1 b2 ", input2 : " b1 a2 ");
bothStringContainsSameLetter2(input:"abc", input2 : "Abc");
bothStringContainsSameLetter2(input:"abcc", input2 : "abca");




bothStringContainsSameLetter3(input:"abca", input2 : "abca");
bothStringContainsSameLetter3(input:"abc", input2 : "cba");
bothStringContainsSameLetter3(input:" a1 b2 ", input2 : " b1 a2 ");
bothStringContainsSameLetter3(input:"abc", input2 : "Abc");
bothStringContainsSameLetter3(input:"abcc", input2 : "abca");
