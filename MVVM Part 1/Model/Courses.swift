//
//  Courses.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 29/09/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//


struct website_description:Decodable {
    let name:String
    let description:String
    let courses: [Courses]
    
}

struct Courses:Decodable {
    
    var id :Int?
    var name :String?
    var link :String?
    var imageUrl :String?
    var number_of_lession :Int?

}
