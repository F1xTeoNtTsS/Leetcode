//
//  countBits.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 26/12/2022.
//

import Foundation

func countBits(n: Int) -> [Int] {
    if n == 0 {
        return [0]
    }
    var count = [0,1]
    var i = 2
    while i <= n {
        let n1 = i >> 1
        let n2 = i % 2
        count.append(count[n1] + count[n2])
        i += 1
    }
    return count
}

func countBitsDummy(n: Int) -> [Int] {
    var arr: [Int] = []
    
    for n in 0...n {
        let binary = String(n, radix: 2)
        arr.append(binary.filter { $0 != "0" }.count)
    }
    return arr
}

// MARK: - Cases
// 2 -> [0,1,1]
// 5 -> [0,1,1,2,1,2]
