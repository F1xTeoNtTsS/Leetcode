//
//  climbStairs.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 21/12/2022.
//

import Foundation

func climbStairs(_ n: Int) -> Int {
    if n == 1 {
        return 1
    }
    
    var n1 = 1
    var n2 = 2
    
    for _ in 3...n {
        (n1, n2) = (n2, n1+n2)
    }
    
    return n2
}

// https://leetcode.com/problems/climbing-stairs/
// MARK: - Cases
// 2 -> 2
// 3 -> 3
// 4 ->
