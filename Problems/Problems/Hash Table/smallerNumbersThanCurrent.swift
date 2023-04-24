//
//  smallerNumbersThanCurrent.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 24/04/2023.
//

import Foundation

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var dict: [Int: Int] = [:]

    nums.forEach { int in
        dict[int] = 0

        nums.forEach { int2 in
            if int2 < int {
                if let value = dict[int] {
                    dict[int] = value + 1
                }
            }
        }
    }

    var result: [Int] = []

    nums.forEach { result.append(dict[$0]!) }


    return result
}
