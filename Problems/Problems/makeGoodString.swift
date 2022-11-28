//
//  makeGoodString.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 28.11.2022.
//

import Foundation

func makeGoodString(_ s: String) -> String {
    var stack: String = ""
    
    for element in s {
        if element.isLowercase {
            if let last = stack.last, last.isUppercase, last.lowercased() == element.lowercased() {
                stack.removeLast()
            } else {
                stack.append(element)
            }
        } else {
            if let last = stack.last, last.isLowercase, last.lowercased() == element.lowercased() {
                stack.removeLast()
            } else {
                stack.append(element)
            }
        }
    }
    
    return stack
}

// MARK: - Cases
// aAbBcC = ""
// cDbBaD = cDaD
// abBAcC = ""
// Pp = ""
