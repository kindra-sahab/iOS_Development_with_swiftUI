//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Jatin Kindra on 17/04/23.
//

import XCTest
@testable import BullsEye

final class BullsEyeTests: XCTestCase {
  
  var game: Game!
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    game = Game()
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    game = nil
  }
  
  func testExample() throws {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    // Any test you write for XCTest can be annotated as throws and async.
    // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
    // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    
//    XCTAssertEqual(game.getPoints(currentSliderValue: 20), 999)
    
  }
  
  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    measure {
      // Put the code you want to measure the time of here.
    }
  }
  
  // TDD (Test Driven Development)
  
  func testScorePositive() {
    let guess = game.target + 5
    let points = game.getPoints(currentSliderValue: guess)
    XCTAssertEqual(points, 95)
  }
  
  func testScoreNegative() {
    let guess = game.target - 5
    let points = game.getPoints(currentSliderValue: guess)
    XCTAssertEqual(points, 95)
  }
  
}
