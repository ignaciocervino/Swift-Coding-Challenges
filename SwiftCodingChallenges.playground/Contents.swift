import Foundation
import XCTest

// MARK - Challenge 1: Are the letters unique?
/**
 Difficulty: Easy
 
 Write a function that accepts a String as its only parameter, and returns true if the string has
 only unique letters, taking letter case into account.
 
 Sample input and output
 • The string “No duplicates” should return true.
 • The string “abcdefghijklmnopqrstuvwxyz” should return true.
 • The string “AaBbCc” should return true because the challenge is case-sensitive.
 • The string “Hello, world” should return false because of the double Ls and double Os.
 */

func hasUniqueLetters(string: String) -> Bool {
    Set(string).count == string.count
}

class Challenge_1_tests: XCTestCase {
    func testUniqueString() {
        XCTAssert(hasUniqueLetters(string: "No duplicates") == true)
        XCTAssert(hasUniqueLetters(string: "AaBbCc") == true)
        XCTAssert(hasUniqueLetters(string: "abcdefghijklmnopqrstuvwxyz") == true)
        XCTAssert(hasUniqueLetters(string: "Hello, world") == false)
    }
}

Challenge_1_tests.defaultTestSuite.run()
