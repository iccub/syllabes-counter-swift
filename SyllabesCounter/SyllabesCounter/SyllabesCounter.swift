//
//  SyllabesCounter.swift
//  SyllabesCounter
//
//  Created by Michal Buczek on 22.08.2016.
//  Copyright © 2016 Michal Buczek. All rights reserved.
//

import Foundation

public class SyllabesCounter {
    let calculator: SyllabesCalculator
    
    public init(language: Language = .english) {
        switch language {
        case .english:
            calculator = EnglishSyllabesCalculator()
        case .polish:
            calculator = PolishSyllabesCalculator()
        }
    }
    
    public func syllabesForWord(word: String) -> Int {
        return calculator.countSyllabesForWord(word)
    }
}