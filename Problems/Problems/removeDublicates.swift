//
//  RemoveDublicates.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 25.11.2022.
//

import Foundation

func removeDublicates(arr: String) -> String {
    var result = ""
    
    for item in arr {
        if let last = result.last, result.count > 0, last == item {
            result.removeLast()
        }
        result.append(item)
    }
    return result
}


// MARK: - Cases
// aaaaabbc -> abc
// abcc -> abc
