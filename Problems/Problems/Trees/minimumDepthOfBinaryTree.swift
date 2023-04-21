//
//  minimumDepthOfBinaryTree.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 13/03/2023.
//

import Foundation

func minDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    
    var result = 1
    var queue: [TreeNode] = [root]
    
    
externalLoop: while queue.count > 0 {
    var childQueue: [TreeNode] = []
    for node in queue {
        if node.left == nil && node.right == nil { break externalLoop }
        
        if let left = node.left {
            childQueue.append(left)
        }
        if let right = node.right {
            childQueue.append(right)
        }
    }
    queue = childQueue
    result += 1
}
    
    return result
}


// https://leetcode.com/problems/minimum-depth-of-binary-tree/
