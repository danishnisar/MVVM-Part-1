//
//  CategoryProducts.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 05/10/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//



struct CategoryProducts:Decodable {
    
    let products:[ProductsKey]
   
}

struct ProductsKey:Decodable {
    
    let id:String
    let name:String
    let price:Int
    let stock_status:Int
    let type:String
    let status:String
    let special_price:String
    let direct_url:String
    let parent_category:String
    let category:String
    let category_id:String
    let images:String
    
}

struct filters:Decodable {
    let priceRange:range
    
}
struct range:Decodable {
    let minPrice:Int
    let maxPrice:Int
}





