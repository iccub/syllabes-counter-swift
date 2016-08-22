//
//  EnglishSyllabesCalculator.swift
//  SyllabeCounter
//
//  Created by Michal Buczek on 22.08.2016.
//  Copyright © 2016 Michal Buczek. All rights reserved.
//

import Foundation

struct EnglishSyllabesCalculator: SyllabesCalculator {
    var vowels = ["a", "e", "i", "o" ,"u", "y"]
    
    //TODO: Refactor this method
    func countSyllabesForWord(word: String) -> Int {
        let wordLowercase = word.lowercaseString
        let wordLetters = wordLowercase.characters.map { String($0) }
        var vowelsCount = 0
        var wasLastLetterVowel = false
        
        for letter in wordLetters {
            var vowelFound = false
            
            for vowel in vowels {
                if vowel == letter && wasLastLetterVowel {
                    vowelFound = true
                    wasLastLetterVowel = true
                    break
                } else if vowel == letter && !wasLastLetterVowel {
                    vowelsCount += 1
                    vowelFound = true
                    wasLastLetterVowel = true
                    break
                }
            }
            
            if !vowelFound {
                wasLastLetterVowel = false
            }
            
        }
        
        if wordLowercase.characters.count > 2 && wordLowercase.substringFromIndex(wordLowercase.endIndex.advancedBy(-2)) == "es" {
            vowelsCount -= 1
        } else if wordLowercase.characters.count > 1 && wordLowercase.substringFromIndex(wordLowercase.endIndex.advancedBy(-1)) == "e" {
            vowelsCount -= 1
        }
        
        return vowelsCount
    }
}