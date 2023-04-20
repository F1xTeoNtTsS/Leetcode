//
//  diameterOfBinaryTree.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 18/04/2023.
//

import Foundation

func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    guard root != nil else { return 0 }

    func dfs(_ node: TreeNode?, _ diameter: inout Int) -> Int {
        guard let node = node else { return 0 }

        let left = dfs(node.left, &diameter)
        let right = dfs(node.right, &diameter)

        diameter = max(diameter, left + right)

        return 1 + max(left, right)
    }

    var diameter = -1
    dfs(root, &diameter)
    return diameter
}
