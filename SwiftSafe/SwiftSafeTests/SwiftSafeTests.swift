//
//  SwiftSafeTests.swift
//  SwiftSafeTests
//
//  Created by NXGLab on 2022/12/13.
//

import XCTest
@testable import SwiftSafe

class SwiftSafeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
// MARK: - 数组
    func testArray() {
        
       // Array
       var arr = [Any?]()
//        print("\(arr[1])")
       print("\(arr.safeIndex(1))")
       
//        arr.append(nil)
       arr.safeAppend(nil)
        
        print("-----\(arr)")
       
    }
    // MARK: - 类型转换
    func testType() {
        // 类型转换
        let person = Person()
        
        if person is Person {
            let p = person as? Person
        }
//        let p = person as? Array<Any> //错误类型
        let p = person as! Array<Any> //错误类型
        print(p)
        
    }
    
    
}
