import Foundation


// Chapter 1: Solutions to Arrays and Strings
// Question 1.1 - Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?


// Implementation with additional data structure
// The time complexity of this implementation is O(n)

func checkForUniqueChar(in word: String) -> Bool {
    var newWord = Set<Character>()
    
    for char in word {
        if newWord.contains(char) {
            return false
        }
        newWord.insert(char)
    }
    return true
}



// Implementation without additional data structure
// Compare every character of the string to every other character. This will take O(n^2) and O(1) space.

func checkForUniqueCharWithoutAdditional(in word: String) -> Bool {
    
    let n = word.count
    
    for i in 0...(n - 2) {
        for j in (i + 1)...(n - 1) {
            
            if String(word[word.index(word.startIndex, offsetBy: i)]) == String(word[word.index(word.startIndex, offsetBy: j)]) {
                return false
            }
        }
    }
    return true
}


// Test Cases
print(checkForUniqueChar(in: "Orange"))
print(checkForUniqueCharWithoutAdditional(in: "hello"))
