//
//  maxProfit.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 21/12/2022.
//

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    if prices.count == 1 {
        return 0
    }
    
    var min = prices[0]
    var max = prices[0]
    var result = 0
    
    for price in prices {
        if price < min {
            if result < max - min {
                result = max - min
            }
            (min, max) = (price, price)
        }
        if price > max {
            max = price
            if result < max - min {
                result = max - min
            }
        }
    }
    
    return result
}

// https://leetcode.com/problems/best-time-to-buy-and-sell-stock
// MARK: - Cases
// [7,1,5,3,6,4] -> 5
// [7,6,4,3,1] -> 0
// [1,2,4,1] ->
