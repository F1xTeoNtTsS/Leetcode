//
//  backspaceStringCompare.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 10/03/2023.
//

import Foundation

func backspaceCompare(_ s: String, _ t: String) -> Bool {

    return charset(s) == charset(t)
}

fileprivate func charset(_ string: String) -> String {
    var result = ""
    for char in string {
        if char == "#" {
            if !result.isEmpty {
                result.removeLast()
            }
            continue
        }
        result.append(char)
    }

    return result
}


// https://leetcode.com/problems/backspace-string-compare/
// MARK: - Cases
// s = "ab#c", t = "ad#c" -> true
// s = "ab##", t = "c#d#" -> true
// s = "a#c", t = "b" -> false
