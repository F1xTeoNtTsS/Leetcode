//
//  isValidBrackets.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 25.11.2022.
//

import Foundation

func isValidBrackets(_ brackets: String) -> Bool {
    var stack: [Character] = []
    let brDict: [Character: Character] = [")": "(", "}": "{", "]": "["]
    
    for br in brackets {
        if br == "(" || br == "{" || br == "[" {
            stack.append(br)
        } else if stack.isEmpty {
            return false
        } else {
            let last = stack.removeLast()
            if last != brDict[br] {
                return false
            }
        }
    }
    
    return stack.isEmpty
}
