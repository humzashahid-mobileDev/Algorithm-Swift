////: [Previous](@previous)
//Challenge 5: Count the characters
//Difficulty: Easy
//Write a function that accepts a string, and returns how many times a specific character appears,
//taking case into account.
//Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.
//Sample input and output
//• The letter “a” appears twice in “The rain in Spain”.
//• The letter “i” appears four times in “Mississippi”.
//• The letter “i” appears three times in “Hacking with Swift”.

import Foundation

func characterCountAppear(input : String, char : Character) -> Int {
    let inputArray = Array(input)
    var count = 0
    for obj in inputArray {
        if obj == char {
            count = count + 1
        }
    }
    return count
}


func characterCountAppear2(input : String, char : Character) -> Int {
    return input.reduce(0) { $1 == char ? $0 + 1 : $0 }
}

func characterCountAppear3(input : String, char : Character) -> Int {

    let modified = input.replacingOccurrences(of: "\(char)", with: "")
    return input.count - modified.count
}

characterCountAppear(input : "The rain in Spain" , char: "a" )
characterCountAppear(input : "Mississippi" , char: "i" )
characterCountAppear(input : "Hacking with Swift" , char: "i" )


characterCountAppear2(input : "The rain in Spain" , char: "a" )
characterCountAppear2(input : "Mississippi" , char: "i" )
characterCountAppear2(input : "Hacking with Swift" , char: "i" )

characterCountAppear3(input : "The rain in Spain" , char: "a" )
characterCountAppear3(input : "Mississippi" , char: "i" )
print(characterCountAppear3(input : "Hacking with Swift" , char: "i" ))

