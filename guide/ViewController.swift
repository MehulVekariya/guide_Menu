//
//  ViewController.swift
//  guide
//
//  Created by mehul patel on 2017-01-26.
//  Copyright © 2017 mehul patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
               
    @IBOutlet weak var collView: UICollectionView!
   
    
    let imageArray = [UIImage(named: "r1"),UIImage(named: "r2"),UIImage(named: "r3"),UIImage(named: "r4"),
                      UIImage(named: "r5"),UIImage(named: "r6")]
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! Cell
        
        cell.imageCell.image = self.imageArray[indexPath.row]
        cell.imageCell.layer.cornerRadius = 10.0
        cell.imageCell.clipsToBounds = true
        
        return cell
        
    }
    
    
}

