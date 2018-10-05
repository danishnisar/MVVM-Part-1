//
//  CoursesViewModel.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 29/09/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//

import Foundation

class CoursesViewModel{
    
    /// Networing
    func startJsonSerializatoin(datacompletion:@escaping(_ status:Bool,_ object:[Courses])->()){
        
        let link = "https://api.letsbuildthatapp.com/jsondecodable/courses_missing_fields"
        let url = URL(string: link)!
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print("error",error!)
                return
            }
            guard let data = data else {return}
           
            do
            {
                
                let websiteDescription = try JSONDecoder().decode([Courses].self, from: data)
                
                datacompletion(true,websiteDescription)
                
            }catch let jsonerro {
                print("error",jsonerro)
            }

            
            }.resume()
        
        
    }
    //Courses
}
