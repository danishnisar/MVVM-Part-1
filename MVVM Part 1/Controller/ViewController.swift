//
//  ViewController.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 17/09/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableviewOutlet: UITableView!
    var viewModel: TodotableViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let nib  = UINib(nibName: "TodoItemTableViewCell", bundle: nil)
        tableviewOutlet.register(nib, forCellReuseIdentifier: "todocell")
        viewModel = TodotableViewModel()
        
    }

    
    
    
}

extension ViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (viewModel?.items.count)!
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "todocell", for: indexPath) as! TodoItemTableViewCell
        let item = viewModel?.items[indexPath.row]
        cell.configure(withTodoviewModel: item!)
        
        return cell
    }
}


