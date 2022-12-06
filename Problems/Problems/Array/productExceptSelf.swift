//
//  productExceptSelf.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 06.12.2022.
//

import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    
    var product = 1
    var r: [Int] = []
    for n in nums {
        product *= n
    }
    for n in nums {
        r.append(product/n)
    }
    
    return r
}


// MARK: - Cases
// [1,2,3,0] -> [6, 3, 2]
