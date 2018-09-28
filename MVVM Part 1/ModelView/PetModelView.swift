//
//  PetModelView.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 17/09/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//

import UIKit

class PetModelView {
    
    public var pet:Pet
    public var calender:Calendar
    
    init(pet:Pet) {
        self.pet = pet
        self.calender = Calendar(identifier: Calendar.Identifier.gregorian)
        
    }
    
    var name:String {
        return pet.name
    }
    var image:UIImage {
        return pet.image
    }
    var ageText:String {
        let today = calender.startOfDay(for: Date())
        let birthday = calender.startOfDay(for: pet.birthday)
        let compnents = calender.dateComponents([.year], from: birthday,to: today)
        
        let age = compnents.year!
        return "\(age) years old"
    }
    
    var adoptFee:String {
        switch pet.rare {
        case .common :
            return "$45.00"
        case .uncommon :
            return "$100.00"
        case .rare :
            return "$150.00"
        case .veryrare :
            return "$200.00"
        }
        
    }
    
    
    
    
}

extension PetModelView{
//    public func confgure(_ view:UIViewController) {
////        view.name.text = self.name
////        view.image.image = self.image
////        view.age.text = self.ageText
////        view.price.text = self.adoptFee
//    }

}
