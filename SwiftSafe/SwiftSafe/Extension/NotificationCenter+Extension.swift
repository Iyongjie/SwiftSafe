//
//  NotificationCenter.swift
//  SwiftSafe
//
//  Created by NXGLab on 2022/12/13.
//

import Foundation

//1.
// 网络请求增加字段，区分是否回主线程


// 2. safe添加移除通知

extension NotificationCenter {
    
    // 监听者不为空，并且可响应selector。才能添加通知
    func safeAddObsever(observer: Any?, selector: Selector?, name: NSNotification.Name?) {
        guard let observer = observer, let selector = selector, let name = name else {
            return
        }
        NotificationCenter.default.addObserver(observer, selector: selector, name: name, object: nil)
    }
    
    func safeRemoveObserver(observer: Any?) {
        if let observer = observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }
}
