//: [Previous](@previous)

import Foundation

//Challenge 10: Vowels and consonants
//Difficulty: Tricky
//Given a string in English, return a tuple containing the number of vowels and consonants.
//Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
//Sample input and output
//• The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
//• The input “Mississippi” should return 4 vowels and 7 consonants.
 
func challenge(string: String) -> (vowel: Int, constants : Int) {
    
    var input = Array(string.lowercased())
    var vowleCount = 0
    var otherConstantsCount = 0
    for i in 0..<input.count {
        if "aeiou".contains(input[i]) {
            vowleCount = vowleCount + 1
        } else {
            otherConstantsCount = otherConstantsCount + 1
        }
    }
    
    return (vowleCount,otherConstantsCount)
}


challenge(string : "Mississippi") /// The input “Mississippi” should return 4 vowels and 7 consonants.
