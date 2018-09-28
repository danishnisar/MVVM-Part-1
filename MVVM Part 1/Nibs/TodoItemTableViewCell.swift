//
//  TodoItemTableViewCell.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 28/09/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//

import UIKit

class TodoItemTableViewCell: UITableViewCell {

    
    @IBOutlet weak var numberOfIem: UILabel!
    @IBOutlet weak var titleItem: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

 
    
    
    
    func configure(withTodoviewModel viewModel:TodoitemPresenttable){
        numberOfIem.text = viewModel.id
        titleItem.text = viewModel.textValue
        
    }
    
}
