//
//  StoreData.swift
//  ToDoList
//
//  Created by Vinay Reddy Polati on 9/14/17.
//  Copyright © 2017 m1m2Solutions. All rights reserved.
//

import Foundation
class StoreData{
    
    
    public static func saveData(){
        var itemsList:[String] = [];
        for c1 in 0..<List.getInstance().size() {
            itemsList.append(List.getInstance().get(c1));
        }
        UserDefaults.standard.set(itemsList, forKey: "toDoList");
    }
    
    public static func loadData(){
        let listObject = UserDefaults.standard.object(forKey: "toDoList");
        if let list = listObject as? [String] {
            for c2 in 0..<list.count {
                List.getInstance().add(toList: list[c2]);
            }
        }
    }
}
