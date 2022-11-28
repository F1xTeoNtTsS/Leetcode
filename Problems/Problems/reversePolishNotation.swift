//
//  ReversePolishNotation.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 28.11.2022.
//

import Foundation

func reversePolishNotation(_ tokens: [String]) -> Int {
    var stack: [Int] = []
    
    for element in tokens {
        if let i = Int(element) {
            stack.append(i)
        } else {
            let b = stack.removeLast()
            let a = stack.removeLast()
            var result = 0
            
            switch element {
            case "/":
                result = a / b
            case "+":
                result = a + b
            case "-":
                result = a - b
            case "*":
                result = a * b
            default:
                break
            }
            stack.append(result)
        }
    }
    return stack.removeLast()
}

// MARK: - Cases
//["2","1","+","3","*"] -> 9
//["4","13","5","/","+"] -> 6
//["10","6","9","3","+","-11","*","/","*","17","+","5","+"] -> 22
