//
//  OutletTableViewCell.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 02/10/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//

import UIKit

class OutletTableViewCell: UITableViewCell {

    @IBOutlet weak var labelDeail: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
    
    func configure(viewModel model: ProductsKey){
        if model != nil {
        labelDeail.text = model.name
        }
        labelDeail.text = "nil occur"
        
        
    }
    
    
    
    
    
    
    
    
}
