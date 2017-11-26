//
//  BaseDataSource.swift
//  CollectionViewInTableView
//
//  Created by anoopm on 24/06/17.
//  Copyright © 2017 anoopm. All rights reserved.
//

import Foundation

struct BaseDataSource {
    
    var entities:[String]
    var headerName:String
    var selectedValue:String?

    
    init(with entities:[String], headerName:String){
        self.entities = entities
        self.headerName = headerName
    }
}
