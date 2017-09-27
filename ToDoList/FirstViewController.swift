//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Vinay Reddy Polati on 9/14/17.
//  Copyright © 2017 m1m2Solutions. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var toDoList:List = List.getInstance();
    
    @IBOutlet weak var tableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return toDoList.size();
    }
    
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let itemCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "work");
        itemCell.textLabel?.text = toDoList.get(indexPath.row);
        return itemCell;
    }
    
    /* Delete a row. */
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete {
            toDoList.delete(fromList: indexPath.row);
            tableView.reloadData();
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData();
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        StoreData.saveData();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        StoreData.loadData();
        tableView.reloadData();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

