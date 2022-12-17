//
//  Number+Extension.swift
//  SwiftSafe
//
//  Created by NXGLab on 2022/12/13.
//

import Foundation

// MARK: - Double
public extension Double {
    
    /// Double转String，无精度丢失
    /// - Parameters:
    ///   - base: 小数点位，默认6位
    ///   - mode: 对齐方式，默认向下对齐
    /// - Returns: 字符串
    func decimalString(_ base: Int = 6, _ mode: NumberFormatter.RoundingMode = .floor) -> String {
        
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = base
        formatter.roundingMode = mode
        let result = formatter.string(for: self) ?? "0"
        return result
    }
}


// MARK: - Float
public extension Float {
    
    /// Float转String，无精度丢失
    /// - Parameters:
    ///   - base: 小数点位，默认6位
    ///   - mode: 对齐方式，默认向下对齐
    /// - Returns: 字符串
    func decimalString(_ base: Int = 6, _ mode: NumberFormatter.RoundingMode = .floor) -> String {
        
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = base
        formatter.roundingMode = mode
        let result = formatter.string(for: self) ?? "0"
        return result
    }
    
}

