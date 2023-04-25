//
//  decodeMessage.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 25/04/2023.
//

import Foundation
// https://leetcode.com/problems/decode-the-message/

func decodeMessage(_ key: String, _ message: String) -> String {
    let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
                                 "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var dict: [Character: Character] = [:]

    var index = 0

    for k in key {
        if k.isLetter && dict[k] == nil {
            dict[k] = alphabet[index]
            index += 1
        }
    }

    var result = ""

    for l in message {
        let a = dict[l] ?? l
        result.append(a)

    }
    return result
}
