//
//  CustomTableViewCell.swift
//  CollectionViewInTableView
//
//  Created by anoopm on 24/06/17.
//  Copyright © 2017 anoopm. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    fileprivate var collectionDataSource:BaseDataSource!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureCollectionWith(dataSource: BaseDataSource){
        
        self.collectionDataSource = dataSource
    }
}

extension CustomTableViewCell:UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let entities = self.collectionDataSource.entities
        return entities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CustomCollectionViewCell
        let entities = self.collectionDataSource.entities
        
        cell.collectionDataText = entities[indexPath.row]
        return cell
    }
}
