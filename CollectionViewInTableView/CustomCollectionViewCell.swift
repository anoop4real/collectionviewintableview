//
//  CustomCollectionViewCell.swift
//  CollectionViewInTableView
//
//  Created by anoopm on 24/06/17.
//  Copyright © 2017 anoopm. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var textLabel:UILabel!
    var collectionDataText:String! {
        
        didSet{
            updateUI()
        }
    }
    
    func updateUI(){
        
        textLabel.text = collectionDataText
    }
}
