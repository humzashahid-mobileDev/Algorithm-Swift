import UIKit

//Difficulty: Easy
//Write a function that accepts a String as its only parameter, and returns true if the string has
//only unique letters, taking letter case into account.
//Sample input and output
//• The string “No duplicates” should return true.
//• The string “abcdefghijklmnopqrstuvwxyz” should return true.
//• The string “AaBbCc” should return true because the challenge is case-sensitive.
//• The string “Hello, world” should return false because of the double Ls and double Os.



func isdublicateExist(input: String) -> Bool {
    var tempArray = [Character]()
    for obj in input {
        if tempArray.contains(obj) {
            return false
        }
        tempArray.append(obj)
    }
    return true
}
func isdublicateExist2(input: String) -> Bool {
    
    return Set(input).count == Array(input).count
}

func isdublicateExist3(input: String) -> Bool {
    
    return Set(input).count == Array(input).count
}

func isdublicateExist4(input: String) -> Bool {
    
    var inputArray = Array(input)
    var tempArray : [Character] = [Character]()
    for obj in inputArray {
        if tempArray.contains(obj) {
           return false
        }
        tempArray.append(obj)
    }
    
}

isdublicateExist(input: "No Dublicate");
isdublicateExist(input: "abcdefghijklmnopqrstuvwxyz");
isdublicateExist(input: "AaBbCc");
isdublicateExist(input: "Hello, world");

isdublicateExist2(input: "No Dublicate");
isdublicateExist2(input: "abcdefghijklmnopqrstuvwxyz");
isdublicateExist2(input: "AaBbCc");
isdublicateExist2(input: "Hello, world");

