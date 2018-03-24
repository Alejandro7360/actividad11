//
//  ViewController.swift
//  CollectionView_Intro_Inicio
//
//  Created by Luis Rollon Gordo on 27/1/17.
//  Copyright © 2017 EfectoApple. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let Restaurantes = ["Aishi Sushi Bar", "Akira Sushi", "Antos Restaurant", "El Guero Alteño", "La Arrabbiata", "La Cebada", "Pizza y Come", "Pollo Pepe", "Sabrozia", "San Giorgio Pizza", "Sr. Manolo", "Umai Sushi", "Zapo Pizza", "Zona Sushi", "Zoo Pizza"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Restaurantes.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let identifier = "Item"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! SeriesCollectionViewCell
        cell.itemLabel.text = Restaurantes[indexPath.row]
        cell.itemImage.image = UIImage.init(imageLiteralResourceName: Restaurantes[indexPath.row])
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

