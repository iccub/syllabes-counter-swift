//
//  SyllabesCalculator.swift
//  SyllabeCounter
//
//  Created by Michal Buczek on 22.08.2016.
//  Copyright © 2016 Michal Buczek. All rights reserved.
//

import Foundation

protocol SyllabesCalculator {
    func countSyllabesForWord(word: String) -> Int
    var vowels: [String] { get }
    //func countSyllabesForSentence(text: String) -> [Int]
}