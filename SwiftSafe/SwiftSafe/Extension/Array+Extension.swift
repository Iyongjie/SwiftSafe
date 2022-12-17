//
//  Array+Extension.swift
//  SwiftSafe
//
//  Created by NXGLab on 2022/12/13.
//

import Foundation

// 增
public extension Array {
    
    mutating func safeAppend(_ safeObject :Iterator.Element?) {
        if let o = safeObject {
            self.append(o)
        }
    }
}

// 查
public extension Array {
    
    func safeIndex(_ index: Index) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}


