//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Vinay Reddy Polati on 9/14/17.
//  Copyright © 2017 m1m2Solutions. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
   var toDoList:List = List.getInstance();
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func addItemButtonAction(_ sender: UIButton) {
        if let itemName = itemTextField.text {
            toDoList.add(toList: itemName);
            itemTextField.text = String();
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true);
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

