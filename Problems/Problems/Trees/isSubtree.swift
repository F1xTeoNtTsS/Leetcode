//
//  isSubtree.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 21/04/2023.
//

import Foundation

func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
    if root == nil { return false }
    
    return isSameTree(root, subRoot)
    || isSubtree(root?.left, subRoot)
    || isSubtree(root?.right, subRoot)
}

// https://leetcode.com/problems/subtree-of-another-tree/
