//
//  main.swift
//  ChessProject
//
//  Created by Natasha on 3/23/23.
//

import Foundation



var pieces: [Piece] = [King(value: 1000, isWhite: true) ,
                       Queen(value: 9, isWhite: true) ,
                       Rook(value: 5, isWhite: true) ,
                       Bishop(value: 3, isWhite: true) ,
                       Knight(value: 2, isWhite: true) ,
                       Pawn(value: 1, isWhite: true , promoted: false, newPiece: nil)
]

for piece in pieces {
  piece.move()
}


let p1 = Pawn(value: 1, isWhite: true, promoted: true, newPiece: Queen(value: 9, isWhite: true))
let p2 = Pawn(value: 1, isWhite: true, promoted: false, newPiece: nil)
let p3 = Pawn(value: 1, isWhite: false, promoted: false, newPiece: nil)
let p4 = Pawn(value: 1, isWhite: false, promoted: true, newPiece: Queen(value: 9, isWhite: false))
let p5 = Pawn(value: 1, isWhite: true, promoted: true, newPiece: Knight(value: 2, isWhite: true))


print(p1 == p2)
print(p1 == p4)
print(p1 == p5)
print(p2 == p3)
print(p4 == p5)

