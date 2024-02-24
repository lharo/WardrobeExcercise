//
//  WardrobeModel.swift
//  Wardrobe
//
//  Created by Luis Esteban Haro on 14/02/24.
//

import Foundation

struct Piece {
    let pieceName: String
    let pieceTitle: String
}

struct WardrobeSection {
    var currentSelection: Int
    let availablePieces: [Piece]
    
    mutating func moveToNext() {
        guard currentSelection < availablePieces.count - 1 else {
            return
        }
        currentSelection += 1
    }
    
    mutating func moveToPrevious() {
        guard currentSelection > 0 else {
            return
        }
        currentSelection -= 1
    }

}

extension Piece {
    static func getHats() -> [Piece] {
        return [Piece(pieceName: "head1", pieceTitle: "Hat 1"),
                Piece(pieceName: "head2", pieceTitle: "Hat 2"),
                Piece(pieceName: "head3", pieceTitle: "Hat 3")]
    }

    static func getPants() -> [Piece] {
        return [Piece(pieceName: "pants1", pieceTitle: "Pants 1"),
                Piece(pieceName: "pants2", pieceTitle: "Pants 2")]
    }

    static func getShirts() -> [Piece] {
        return [Piece(pieceName: "shirt3", pieceTitle: "Shirt 1")]
    }

}

struct WardrobeModel {
    func getWardroveItems() -> [WardrobeSection] {
        
        let headPieces = Piece.getHats()
        let pantsPieces = Piece.getPants()
        let shirtPieces = Piece.getShirts()
        
        let headSection: WardrobeSection = WardrobeSection(currentSelection: 0, availablePieces: headPieces)
        let pantsSection: WardrobeSection = WardrobeSection(currentSelection: 0, availablePieces: pantsPieces)
        let shirtSection: WardrobeSection = WardrobeSection(currentSelection: 0, availablePieces: shirtPieces)
        
        
        return [headSection, pantsSection, shirtSection]
    }
}
