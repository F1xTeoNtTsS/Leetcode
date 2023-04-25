//
//  checkIfPangram.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 25/04/2023.
//

import Foundation
// https://leetcode.com/problems/check-if-the-sentence-is-pangram/

func checkIfPangram(_ sentence: String) -> Bool {
    var alphabet: [Character: String] = ["a": "", "b": "", "c": "", "d": "", "e": "", "f": "", "g": "",
                                         "h": "", "i": "", "j": "", "k": "", "l": "", "m": "", "n": "",
                                         "o": "", "p": "", "q": "", "r": "", "s": "", "t": "", "u": "",
                                         "v": "", "w": "", "x": "", "y": "", "z": ""]

    sentence.forEach { alphabet[$0] = nil }

    return alphabet.isEmpty
}
