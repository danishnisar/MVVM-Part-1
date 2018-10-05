//
//  SecoundViewController.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 29/09/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//

import UIKit
class SecoundViewController: UIViewController {


    var outLetViewModel:OutletViewModel?
    @IBOutlet weak var tableViewOutlets: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupTablecell()
        
        
    }
    func setupTablecell(){
        tableViewOutlets.register(UINib(nibName: "OutletTableViewCell", bundle: nil), forCellReuseIdentifier:"outletcell" )
        //tableViewOutlets.dataSource = self
        
        
        
        setupAll(count:1)
    }
    
    func setupAll(count:Int){
        outLetViewModel = OutletViewModel()
        //https://www.telemart.pk/services/outlets/getimages.php
        
        outLetViewModel?.setModel(url: "https://www.telemart.pk/services/index.php?type=CategoryProducts&id=462&page=1&auth=ZeroesGuavaHikersSass84", method: "GET") { status in
            if status == true{
             
                print("start reload")
                DispatchQueue.main.async {
                    self.tableViewOutlets.rowHeight = UITableView.automaticDimension
                    self.tableViewOutlets.estimatedRowHeight = 200
                    self.tableViewOutlets.reloadData()
                   
                }
            }
            
        }
    }
}

extension SecoundViewController:UITableViewDataSource,UITableViewDelegate {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return outLetViewModel?.coutModel() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "outletcell", for: indexPath) as! OutletTableViewCell
        let model = outLetViewModel?.model?.products[indexPath.row] ?? nil
       // print("modelPrinted",model!)
        cell.configure(viewModel: model!)
        return cell;
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        guard let count = outLetViewModel?.coutModel() else {return}
        if indexPath.row == count - 1 {
            
            setupAll(count:2)
            
        }
        
        
    }

    
    
    
}





