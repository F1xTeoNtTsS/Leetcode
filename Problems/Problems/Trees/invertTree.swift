//
//  invertTree.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 21/04/2023.
//

import Foundation

func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }

    (root.left, root.right) = (root.right, root.left)

    return TreeNode(root.val, invertTree(root.left), invertTree(root.right))
}

// https://leetcode.com/problems/invert-binary-tree/
