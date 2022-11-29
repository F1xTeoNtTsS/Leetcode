//
//  removeKDigits.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 29.11.2022.
//

import Foundation

func removeKDigits(_ num: String, _ k: Int) -> String {
    var attempts = k
    var stack = ""
    
    for char in num {
        while let last = stack.last?.wholeNumberValue, char.wholeNumberValue! < last, attempts > 0 {
            stack.removeLast()
            attempts -= 1
        }
        if stack.isEmpty && char == "0" {
            continue
        }
        stack.append(char)
    }
    
    while attempts > 0 && !stack.isEmpty {
        stack.removeLast()
        attempts -= 1
    }
    
    return stack.isEmpty ? "0" : stack
}

// https://leetcode.com/problems/remove-k-digits
// MARK: Cases
// 5432219, 3 -> 2219  5432219 
// 1432219, 3 -> 1219    1432219   1
// 10200, 1 -> 200
// 10, 2 -> 0
// 9, 1 -> 0
// 112, 1 -> 11
// 12345, 3 -> 12

