//
//  ViewController.swift
//  SwiftSafe
//
//  Created by NXGLab on 2022/12/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
         
        // Dictionary
        var dic = Dictionary<String, Any>()
//        dic.safeUpdate("key1", 123)
//        print(dic.safeValueForKey("123"))
        var a: String? = ""
        a = nil
//        dic[a!] = 123
        
        dic.safeUpdate(a!, 123)
        print("")
        
    }


}

/*
 
 NS_ASSUME_NONNULL_BEGIN OC 默认修饰，不为空，swift直接使用如果为空会崩溃，添加默认值
 1. 添加默认值，
 
 
 */
