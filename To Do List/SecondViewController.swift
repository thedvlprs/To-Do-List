//
//  SecondViewController.swift
//  To Do List
//
//  Created by sophia on 6/12/19.
//  Copyright © 2019 fyunka. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var itemTextField: UITextField!
    
    
    @IBAction func add(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:[String]
        
        if let tempItems = itemsObject as? [String] {
            
            items = tempItems
            
            items.append(itemTextField.text!)
            
        } else {
            
           items = [itemTextField.text!]
            
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        itemTextField.text = ""
        
    }
    
    // Keyboard disappear functions (touchesBegan & textFieldShouldReturn one)
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //shutdown the keyboard when user taps away from it
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        
    }


}

