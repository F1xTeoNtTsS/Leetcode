//
//  setZeroes.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 12.12.2022.
//

import Foundation

func setZeroes(_ matrix: inout [[Int]]) {
    var zeroIndices: Set<Int> = []
    var allZeros = false
    
    for sub in 0..<matrix.count {
        for index in 0..<matrix[sub].count {
            if matrix[sub][index] == 0 {
                zeroIndices.insert(index)
                allZeros = true
            }
        }
        if allZeros {
            for index in 0..<matrix[sub].count {
                matrix[sub][index] = 0
            }
            allZeros = false
        }
    }
    
    for sub in 0..<matrix.count {
        for index in 0..<matrix[sub].count {
            if zeroIndices.contains(index) {
                matrix[sub][index] = 0
            }
        }
    }
}

// https://leetcode.com/problems/set-matrix-zeroes/
// MARK: - Cases
// [[1,1,1],[1,0,1],[1,1,1]] -> [[1,0,1],[0,0,0],[1,0,1]]
// [[0,1,2,0],[3,4,5,2],[1,3,1,5]] -> [[0,0,0,0],[0,4,5,0],[0,3,1,0]]
