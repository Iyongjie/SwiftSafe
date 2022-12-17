//
//  String+Extension.swift
//  SwiftSafe
//
//  Created by NXGLab on 2022/12/13.
//

import Foundation
import UIKit


// MARK: - Convert Number
public extension String {
    
    func stringToDouble() -> Double {
        if let num = NumberFormatter().number(from: self) {
            return num.doubleValue
        } else {
            return 0
        }
    }

    func stringToFloat() -> Float {
        if let num = NumberFormatter().number(from: self) {
            return num.floatValue
        } else {
            return 0
        }
    }
    
    func stringToInt() -> Int {
        if let num = NumberFormatter().number(from: self) {
            return num.intValue
        } else {
            return 0
        }
    }
}

//// MARK: - size
//public extension String {
//
//    func heightWithFont(font: UIFont, _ fixedWidth: CGFloat, lineBreakMode: NSLineBreakMode?) -> CGFloat {
//
//        var attr: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font]
//        if let mode = lineBreakMode {
//            let paragraphStyle = NSMutableParagraphStyle()
//            paragraphStyle.lineBreakMode = mode
//            attr.updateValue(paragraphStyle, forKey: NSAttributedString.Key.paragraphStyle)
//        }
//        let size = CGSize(width: fixedWidth, height: CGFloat(MAXFLOAT))
//        let height = ceil(NSString(string: self).boundingRect(with: size, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: attr, context: nil).height)
//        return height
//    }
//
//
//    func widthWithFont(font: UIFont, fixedHeight : CGFloat, lineBreakMode: NSLineBreakMode?) -> CGFloat {
//
//        var attr: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font]
//        if let mode = lineBreakMode {
//            let paragraphStyle = NSMutableParagraphStyle()
//            paragraphStyle.lineBreakMode = mode
//            attr.updateValue(paragraphStyle, forKey: NSAttributedString.Key.paragraphStyle)
//        }
//        let size = CGSize(width: CGFloat(MAXFLOAT), height: fixedHeight)
//        let width = ceil(NSString(string: self).boundingRect(with: size, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: attr, context: nil).width)
//        return width
//    }
//}
