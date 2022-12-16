//
//  spiralOrder.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 16/12/2022.
//

import Foundation

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    guard !matrix.isEmpty else { return [] }
    
    var result: [Int] = []
    var rowStart = 0, rowEnd = matrix.count - 1
    var colStart = 0, colEnd = matrix[0].count - 1
    
    while rowStart <= rowEnd && colStart <= colEnd {
        for i in stride(from: colStart, to: colEnd + 1, by: 1) {
            result.append(matrix[rowStart][i])
        }
        rowStart += 1
        
        for i in stride(from: rowStart, to: rowEnd + 1, by: 1) {
            result.append(matrix[i][colEnd])
        }
        colEnd -= 1
        
        if rowStart <= rowEnd {
            for i in stride(from: colEnd, to: colStart - 1, by: -1) {
                result.append(matrix[rowEnd][i])
            }
        }
        rowEnd -= 1
        
        if colStart <= colEnd {
            for i in stride(from: rowEnd, to: rowStart - 1, by: -1) {
                result.append(matrix[i][colStart])
            }
        }
        colStart += 1
        
    }
    
    return result
}

// https://leetcode.com/problems/spiral-matrix/
// [[1,2,3],[4,5,6],[7,8,9]] -> [1,2,3,6,9,8,7,4,5]
// [[1,2,3,4],[5,6,7,8],[9,10,11,12]] -> [1,2,3,4,8,12,11,10,9,5,6,7]
