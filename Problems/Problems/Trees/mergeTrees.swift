//
//  mergeTrees.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 21/04/2023.
//

import Foundation

func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
    guard let root1 = root1 else { return root2 }
    guard let root2 = root2 else { return root1 }

    return TreeNode(root1.val + root2.val,
                    mergeTrees(root1.left, root2.left),
                    mergeTrees(root1.right, root2.right))
}

// https://leetcode.com/problems/merge-two-binary-trees/
