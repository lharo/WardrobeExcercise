//
//  ViewController.swift
//  Wardrobe
//
//  Created by Luis Esteban Haro on 14/02/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!

    var model = WardrobeModel()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.getWardroveItems().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WardrobeItem", for: indexPath) as! WardrobeCell
        cell.loadWardrobeSection(section: model.getWardroveItems()[indexPath.row])
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }


    @IBAction func printAlert(_ sender: Any) {
        let alert = UIAlertController(title: "My Alert", message: "My message", preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Close", style: .default, handler: nil)
        alert.addAction(alertAction)
        
        present(alert, animated: true, completion: nil)
    }
}

