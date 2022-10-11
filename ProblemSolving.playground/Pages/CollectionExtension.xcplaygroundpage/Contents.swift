//: [Previous](@previous)

import Foundation
//Write an extension for collections of integers that returns the number of times a specific digit
//appears in any of its numbers.
//Sample input and output
//• The code [5, 15, 55, 515].challenge37(count: "5") should return 6.
//• The code [5, 15, 55, 515].challenge37(count: "1") should return 2.
//• The code [55555].challenge37(count: "5") should return 5.
//• The code [55555].challenge37(count: "1") should return 0.


func findNumberOFTimeDigitExistInCollectionArray(data: [Int], digit: Int) -> Int {
    var total = 0
    for obj in data {
        var array = Array(String(describing: obj))
        for char in array {
            if char == Character((String(describing: digit))) {
                total = total + 1
            }
        }
    }
    return total
}

findNumberOFTimeDigitExistInCollectionArray(data: [5, 15, 55, 515], digit: 5)
