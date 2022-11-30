//
//  findAnagrams.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 30.11.2022.
//

import Foundation

func findAnagrams(_ s: String, _ p: String) -> [Int] {
    if p.count > s.count {
        return []
    }
    let pSorted = p.sorted()
    var result: [Int] = []
    var left = 0
    var right = p.count
    
    var substring = String(s[s.index(s.startIndex, offsetBy: left)..<s.index(s.startIndex, offsetBy: right)])
    
    while right < s.count + 1 {
        if substring.sorted() == pSorted {
            result.append(left)
        }
        if right > s.count - 1 {
            break
        }
        substring.removeFirst()
        substring.append(s[s.index(s.startIndex, offsetBy: right)])
        
        left += 1
        right += 1
    }
    
    return result
}

// https://leetcode.com/problems/find-all-anagrams-in-a-string/
// MARK: - Cases
// abab, ab -> [0, 1, 2]
// cbaebabacd, abc -> [0, 6]
// eklpyqrbgjdwtcaxzsnifvhmoueklpyqrbgjdwtcaxzsnifvhmoueklp, yqrbgjdwtcaxzsnifvhmou -> [4, 30]
