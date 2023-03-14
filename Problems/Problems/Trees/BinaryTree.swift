//
//  BinaryTree.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 10/03/2023.
//

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }

    //       4
    //  2         6
    //1   3     5   7
    static func sipleTree() -> TreeNode {
        let node6 = TreeNode(7, nil, nil)
        let node5 = TreeNode(5, nil, nil)
        let node4 = TreeNode(3, nil, nil)
        let node3 = TreeNode(1, nil, nil)
        let node2 = TreeNode(6, node5, node6)
        let node1 = TreeNode(2, node3, node4)
        return TreeNode(4, node1, node2)
    }

    static func sipleTree2() -> TreeNode {
        return TreeNode(10, self.sipleTree(), nil)
    }
}

