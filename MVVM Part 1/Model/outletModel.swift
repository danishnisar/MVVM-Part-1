//
//  outletModel.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 02/10/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//

struct outletModel:Decodable {
    
    let data:[outlets]
    
}
struct outlets:Decodable {
    
    let oId : String?
    let oName : String?
    let oLat : String?
    let oLng : String?
    let oOffers : String?
    let oAddress : String?
    let oNumber : String?
    let oImage : String?
    
}
