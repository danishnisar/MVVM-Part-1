//
//  TodotableViewModel.swift
//  MVVM Part 1
//
//  Created by MacBook Prp on 28/09/2018.
//  Copyright © 2018 Native Brains. All rights reserved.
//


protocol TodoitemPresenttable {
    var id: String? { get }
    var textValue: String? { get }
}

struct TodotableItemViewModel:TodoitemPresenttable {
    var id: String? = "0"
    var textValue: String?
}




protocol TodotableviewDelegate {
    func onTodoitemAdd() -> ()
}

struct TodotableViewModel {
    
    init() {
        let item1 = TodotableItemViewModel(id: "1", textValue: "Danish is here")
        let item2 = TodotableItemViewModel(id: "2", textValue: "Hassan is here")
        let item3 = TodotableItemViewModel(id: "3", textValue: "Ahmed is here")
        let item4 = TodotableItemViewModel(id: "4", textValue: "Abdullah is here")
        items.append(contentsOf: [item1,item2,item3,item4])
    }
    var newValue: String?
    var items:[TodoitemPresenttable] = []
    
}


extension TodotableViewModel:TodotableviewDelegate{
    
    func onTodoitemAdd(){
    
    }
}

