//
//  rotateImage.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 19/12/2022.
//

import Foundation

func rotate(_ matrix: inout [[Int]]) {
    
    matrix.reverse()
    for i in 0..<matrix.count {
        for j in 0..<i {
            let temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
        }
    }
}

// https://leetcode.com/problems/rotate-image/
// MARK: - Cases
// [[1,2,3],[4,5,6],[7,8,9]] -> [[7,4,1],[8,5,2],[9,6,3]] [7 4 1] [8 5 2] [9 6 3]
// [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]] -> [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]
