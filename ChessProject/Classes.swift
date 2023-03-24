//
//  main.swift
//  ChessProject
//
//  Created by Natasha on 3/23/23.
//

import Foundation


class Piece: CustomStringConvertible , Equatable {
  private(set) var value: Int
  private(set) var isWhite: Bool
  var description: String {
    return "Piece (value = \(value))"
  }
  
  init(value: Int, isWhite: Bool) {
    self.value = value
    self.isWhite = isWhite
  }
  
  func getter() -> Int {
    return value
  }
  
  func setter(value: Int) {
    self.value = value
  }
  
  func move() -> Void {
  }
  
  static func == (lhs: Piece, rhs: Piece) -> Bool {
    return lhs.value == rhs.value && lhs.isWhite == rhs.isWhite
  }
}

class King: Piece {
  override init(value: Int, isWhite: Bool) {
    super.init(value: 1000, isWhite: isWhite)
  }
  
  override func move() {
    print("One square")
  }
  
  override var description: String {
    return "King (value = \(value))"
  }
}

class Queen: Piece {
  override init(value: Int, isWhite: Bool) {
    super.init(value: 9, isWhite: isWhite)
  }
  
  override func move() {
    print("Like bishop and rook")
  }
  
  override var description: String {
    return "Queen (value = \(value))"
  }
}

class Rook: Piece {
  override init(value: Int, isWhite: Bool) {
    super.init(value: 5, isWhite: isWhite)
  }
  
  override func move() {
    print("Horizontally or vertically")
  }
  
  override var description: String {
    return "Rook (value = \(value))"
  }
}

class Bishop: Piece {
  override init(value: Int, isWhite: Bool) {
    super.init(value: 3, isWhite: isWhite)
  }
  
  override func move() {
    print("Diagonally")
  }
  
  override var description: String {
    return "Bishop (value = \(value))"
  }
}

class Knight: Piece {
  override init(value: Int, isWhite: Bool) {
    super.init(value: 2, isWhite: isWhite)
  }
  
  override func move() {
    print("Like an L")
  }
  
  override var description: String {
    return "Knight (value = \(value))"
  }
}

class Pawn: Piece {
  var promoted: Bool = true
  var newPiece: Piece?
  
  init (value: Int, isWhite: Bool , promoted: Bool , newPiece: Piece?) {
    self.promoted = promoted
    self.newPiece = newPiece
    super.init(value: 1, isWhite: isWhite)
  }
  
  override func move() {
    print("Forward 1 ")
  }
  
  func promote(_ newPiece: Piece?) {
    self.promoted = true
    self.newPiece = newPiece
  }
  
  override var description: String {
    if promoted == true {
      return "Pawn (value = \(value)) , promoted = \(promoted), newPiece = \(newPiece?.description ?? "")"
    } else {
      return  "Pawn (value = \(value))"
    }
  }
  
  static func == (lhs: Pawn, rhs: Pawn) -> Bool {
    if lhs.promoted != rhs.promoted {
      return false
    }
    if lhs.promoted && rhs.promoted {
      return lhs.newPiece == rhs.newPiece
    }
    return lhs.value == rhs.value && lhs.isWhite == rhs.isWhite
  }
}


