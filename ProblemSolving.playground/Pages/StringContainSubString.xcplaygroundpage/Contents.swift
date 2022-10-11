//: [Previous](@previous)

import Foundation

//Difficulty: Easy
//Write your own version of the contains() method on String that ignores letter case, and
//without using the existing contains() method.


//Sample input and output
//• The code "Hello, world".fuzzyContains("Hello") should return true.
//• The code "Hello, world".fuzzyContains("WORLD") should return true.
//• The code "Hello, world".fuzzyContains("Goodbye") should return false.

func constainSubString(input: String , input1: String) -> Bool {
    if input.lowercased().contains(input1.lowercased()) {
        return true
    }
    return false
}

constainSubString(input: "abcHello, world", input1: "Hello")
constainSubString(input: "Hello, world", input1: "WORLD")
constainSubString(input: "Hello, world", input1: "Goodbye")

// Returns true if s1 is substring of s2

func isSubString(s1: String , s2: String) -> Bool {
    let S1  = Array(s1)
    let S2 = Array(s2)
    let M : Int = S1.count
    let N : Int = S2.count
    
    var j = 0
    var jtemp = 0
    for i in 0..<N {
        j = 0
        for j in 0..<M  {
            print(j)
            if S1[j] != S2[i+j] {
                break
            }
             jtemp = j
        }
         print("\(jtemp)==\(M)")
        if jtemp == M - 1  {
            return true
        }
    }
    return false
}

var s1 = "Hello"
var s2 = "Hello, world"
print(isSubString(s1: s1, s2:s2))










