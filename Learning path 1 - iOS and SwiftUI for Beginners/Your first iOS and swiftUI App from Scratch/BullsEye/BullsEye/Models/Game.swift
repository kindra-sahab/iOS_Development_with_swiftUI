//
//  Game.swift
//  BullsEye
//
//  Created by Jatin Kindra on 11/04/23.
//

import Foundation

struct Game {
  var target: Int = Int.random(in: 1...100)  //Including 1 and 100
  var score: Int = 0
  var round: Int = 1
  
  func getPoints(currentSliderValue: Int) -> Int {
    return 100 - abs(target -  currentSliderValue)
  }
}
