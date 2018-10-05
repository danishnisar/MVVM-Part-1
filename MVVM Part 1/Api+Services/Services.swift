//
//  Services.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 03/10/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//

import UIKit

class Services {
    
    static let serviceAPI = Services()
    
    func requestApiServices<T:Decodable>(url:String, method: String, completion: @escaping (Bool,T) -> () ) {
        
        let makeURL = URL(string: url)!
        var request = URLRequest(url: makeURL)
        request.httpMethod = method
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            
            /// data in to string for testing
            guard let data = data else {return}
            let dostring = String(data: data, encoding: String.Encoding.utf8)
            
            
            print("dostring",dostring!)
            
            
            do
            {
                let jsonData = try JSONDecoder().decode(T.self, from: data)
                
                    print("JsonData",jsonData)
                    completion(true,jsonData)
             
                
            }catch let jsonErr {
                print("Data Not seriale please check ",jsonErr)
                
            }
            
            
            
            }.resume()
        
        
    }
    
}
