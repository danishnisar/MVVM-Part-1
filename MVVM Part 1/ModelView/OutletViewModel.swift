//
//  OutletViewModel.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 02/10/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//

import UIKit

class OutletViewModel{
    
    
    var model:CategoryProducts?
    let services = Services.serviceAPI
    
    
    
    func setModel(url:String,method:String,completion: @escaping (Bool)->()){
        
        services.requestApiServices(url: url, method: method) { (status,details:CategoryProducts) in
            
            if status == true {
                DispatchQueue.global(qos: .userInteractive).async {
                self.model = details
                completion(true)
                }
                
                
                
            }
        }
    
    }
    
    
    
    /// Coutn & return to the tableview rows
    /// - Returns: return int count to tableview
    func coutModel()->Int?{
        
        print("modelcount",model?.products.count)
        return model?.products.count
    }
    
    
    
    
}
