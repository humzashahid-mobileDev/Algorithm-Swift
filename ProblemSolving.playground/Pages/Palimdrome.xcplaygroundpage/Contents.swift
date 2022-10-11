//: [Previous](@previous)

import Foundation

//Write a function that accepts a String as its only parameter, and returns true if the string reads
//the same when reversed, ignoring case.
//Sample input and output
//• The string “rotator” should return true.
//• The string “Rats live on no evil star” should return true.
//• The string “Never odd or even” should return false; even though the letters are the same in
//reverse the spaces are in different places.
//• The string “Hello, world” should return false because it reads “dlrow ,olleH” backwards.
//

//: [Next](@next)


func isPalindrome(input: String)->Bool {
    
    if ( String(input.lowercased().reversed()) == input.lowercased()) {
        return true
    }
    return false;
}

func isPalindrome2(input: String)->Bool {
    var inputArray = Array(input)
    for index in  0..<inputArray.count / 2 {
        if (inputArray[index] != inputArray[inputArray.count - 1 - index]) {
            return false
        }
    }
    return true;
}

func isPalindrome3(input: String)->Bool {
    var inputArray = Array(input)
    for i in 0..<inputArray.count / 2  {
        if inputArray[i] != inputArray [inputArray.count - 1 - i] {
            return false
        }
    }
    return true;
}





isPalindrome(input: "rotator");
isPalindrome(input: "Rats live on no evil star");
isPalindrome(input: "Never odd or even");
isPalindrome(input: "Hello, world");



isPalindrome(input: "rotator");
isPalindrome(input: "Rats live on no evil star");
isPalindrome(input: "Never odd or even");
isPalindrome(input: "Hello, world");




