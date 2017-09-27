//
//  List.swift
//  ToDoList
//
//  Created by Vinay Reddy Polati on 9/14/17.
//  Copyright © 2017 m1m2Solutions. All rights reserved.
//

import Foundation
class List{
    private var toDoList:[String]=[];
    static var instance = List();
    
    private init(){
      //  List.instance = List();
    }
    
    /**/
    func get(_ at:Int)->String {
        return toDoList[at];
    }
    /**/
    func size()->Int {
        return toDoList.count;
    }
    
    /**/
    public static func getInstance()->List{
        return instance;
    }
    
    /* remove an item from List. */
 func delete(fromList row:Int){
        toDoList.remove(at: row);
    }
    
    /* adds an item to List.*/
    func add(toList item:String ){
        toDoList.append(item);
    }
    
    /* remove an item. */
    func delete(fromList item:String){
        toDoList = toDoList.filter() { $0 != item}
    }
}
