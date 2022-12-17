//
//  Dictionary+Extension.swift
//  SwiftSafe
//
//  Created by NXGLab on 2022/12/13.
//

import Foundation

public extension Dictionary {
    
    
    /// 安全 setvalue for key
    /// - Parameters:
    ///   - key: key
    ///   - value: value
    mutating func safeUpdate(_ key :Dictionary.Key , _ value :Dictionary.Value?) {
        if let object = value {
            self[key] = object
        }
    }
    
    /// 安全 value for key
    /// - Parameter key: key
    /// - Returns: value 可选
    func safeValueForKey(_ key : Dictionary.Key ) -> Dictionary.Value? {
        guard let object = self[key] else {
            return nil
        }
        return object
    }
}
