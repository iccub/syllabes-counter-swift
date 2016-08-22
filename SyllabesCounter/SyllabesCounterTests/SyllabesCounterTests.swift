//
//  SyllabesCounterTests.swift
//  SyllabesCounterTests
//
//  Created by Michal Buczek on 22.08.2016.
//  Copyright © 2016 Michal Buczek. All rights reserved.
//

import XCTest
@testable import SyllabesCounter

class SyllabesCounterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEnglishSyllabes() {
        let englishWordList = TestWordListFactory.getEnglishWordList()
        let calculator = EnglishSyllabesCalculator()
        
        
        XCTAssertEqual(calculator.countSyllabesForWord(englishWordList[0]), 1)
        XCTAssertEqual(calculator.countSyllabesForWord(englishWordList[1]), 4)
        XCTAssertEqual(calculator.countSyllabesForWord(englishWordList[2]), 1)
        
        for word in englishWordList {
            
        }
    }
    
    func testPolishSyllabes() {
        let polishWordList = TestWordListFactory.getPolishWordList()
    }
    
}
