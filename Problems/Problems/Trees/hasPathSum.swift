//
//  hasPathSum.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 17/04/2023.
//

import Foundation

func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
    guard let root = root else { return false }
    
    if root.val == targetSum && root.left == nil && root.right == nil { return true }
    
    return hasPathSum(root.left, targetSum - root.val) || hasPathSum(root.right, targetSum - root.val)
}

// https://leetcode.com/problems/path-sum/

