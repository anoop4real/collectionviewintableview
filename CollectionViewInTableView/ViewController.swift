//
//  ViewController.swift
//  CollectionViewInTableView
//
//  Created by anoopm on 24/06/17.
//  Copyright © 2017 anoopm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataArray:[BaseDataSource] = []
    @IBOutlet weak var dataTable:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        createData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func createData(){
        
        dataArray.append(BaseDataSource(with: ["A","B","C","D","E","F","G"], headerName: "Alphabets"))
        dataArray.append(BaseDataSource(with: ["1","2","3","4","5","6","7"], headerName: "Numbers"))
        dataArray.append(BaseDataSource(with: ["+","-","*","#","@","$"], headerName: "Symbols"))
    }

}

extension ViewController:UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as! CustomTableViewCell
        // Very important, if you use indexpath.row, you will get the same data in every section, you must pass the data in section to the collectionview.
        cell.configureCollectionWith(dataSource: dataArray[indexPath.section])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25.0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let ds = dataArray[section]
        return ds.headerName
    }
}

