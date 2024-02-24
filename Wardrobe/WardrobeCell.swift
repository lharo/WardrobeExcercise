//
//  WardrobeCell.swift
//  Wardrobe
//
//  Created by Luis Esteban Haro on 14/02/24.
//

import UIKit

class WardrobeCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var wardrobeSection: WardrobeSection?
    
    func loadWardrobeSection(section: WardrobeSection) {
        wardrobeSection = section
        loadWardrobeSectionWithUpdatedSection()
    }
    
    
    func loadWardrobeSectionWithUpdatedSection() {
        guard let currentPiece = wardrobeSection?.availablePieces[wardrobeSection!.currentSelection] else {
            return
        }
        print(currentPiece)
        imageView.image = UIImage(named: currentPiece.pieceName)
        label.text = currentPiece.pieceTitle
    }
    
    
    @IBAction func onNextPress(_ sender: Any) {
        wardrobeSection?.moveToNext()
        loadWardrobeSectionWithUpdatedSection()
    }
    
    @IBAction func onPreviousPress(_ sender: Any) {
        wardrobeSection?.moveToPrevious()
        loadWardrobeSectionWithUpdatedSection()
    }
}
