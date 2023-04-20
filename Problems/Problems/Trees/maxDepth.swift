//
//  maxDepth.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 17/04/2023.
//

import Foundation

func maxDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }

    return max(maxDepth(root.left), maxDepth(root.right)) + 1
}
