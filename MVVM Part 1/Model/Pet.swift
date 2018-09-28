//
//  Pet.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 17/09/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//

import UIKit
public class Pet {
    
  public enum Rare {
        case common
        case uncommon
        case rare
        case veryrare
    }
    
    public let name: String
    public let birthday: Date
    public let rare: Rare
    public let image: UIImage

   public init(name:String,birthday:Date,rare:Rare,img:UIImage){
        self.name = name
        self.birthday = birthday
        self.rare = rare
        self.image = img
    }
    
    
}
