//
//  TestWordListFactory.swift
//  SyllabeCounter
//
//  Created by Michal Buczek on 22.08.2016.
//  Copyright © 2016 Michal Buczek. All rights reserved.
//

typealias WordWithCorrectAnswer = (word: String, correctAnswer: Int)

class TestWordListFactory {
    static func getPolishWordList() -> [String] {
        return ["raz",
                "dwa",
                "trzynaście",
                "małolat",
                "testujemy",
                "Zobowiązania",
                "telewizor",
                "chciałbym",
                "pokolenie",
                "meandry",
                "sylaba",
                "pietruszka",
                "Ilość",
                "gnieść",
                "gęsi",
                "brzytwa",
                "paralizatorów",
                "jegomość",
                "książę",
                "żółw"
        ]
    }
    
    static func getEnglishWordList() -> [String] {
        return ["one",
                "American",
                "End",
                "same",
                "impossible",
                "tomorrow",
                "patterns",
                "hyphenation",
                "computer",
                "Algorithm",
                "reading",
                "sleep",
                "sleeping",
                "study",
                "framework",
                "default",
                "group",
                "Resources",
                "highlighting",
                "perfect"
        ]
    }
}