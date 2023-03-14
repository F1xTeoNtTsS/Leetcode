//
//  TreeTraversal.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 13/03/2023.
//

import Foundation

// MARK: - DFS

func preOrderDFS(_ root: TreeNode?) {
    guard let root = root else { return }

    var stack: [TreeNode] = [root]

    while !stack.isEmpty {
        let node = stack.removeFirst()
        print(node.val)

        if let right = node.right {
            stack.insert(right, at: 0)
        }

        if let left = node.left {
            stack.insert(left, at: 0)
        }
    }
}

func inOrderDFSRecursive(_ root: TreeNode?) {
    guard let root = root else { return }

    inOrderDFSRecursive(root.left)
    print(root.val)
    inOrderDFSRecursive(root.right)
}

func preOrderDFSRecursive(_ root: TreeNode?) {
    guard let root = root else { return }

    print(root.val)
    preOrderDFSRecursive(root.left)
    preOrderDFSRecursive(root.right)
}

func postOrderDFSRecursive(_ root: TreeNode?) {
    guard let root = root else { return }

    postOrderDFSRecursive(root.left)
    postOrderDFSRecursive(root.right)
    print(root.val)
}

// MARK: - BFS

func BFS(_ root: TreeNode?) {
    guard let root = root else { return }

    var queue: [TreeNode] = [root]

    while !queue.isEmpty {
        let node = queue.removeFirst()
        print(node.val)
        if let left = node.left {
            queue.append(left)
        }
        
        if let right = node.right {
            queue.append(right)
        }
    }
}
