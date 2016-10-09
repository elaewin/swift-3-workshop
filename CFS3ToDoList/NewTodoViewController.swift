//
//  NewTodoViewController.swift
//  CFS3ToDoList
//
//  Created by Erica Winberry on 10/9/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import UIKit

class NewTodoViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.textField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func closeButtonPressed(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let userText = textField.text {
            let todo = Todo(text: userText)
            TodoList.shared.add(todo: todo)
        }
        
        dismiss(animated: true, completion: nil)
        
        return true
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//Coding Challenges

//1. There is an issue with the code above. When we create our TodoList and close the app, then relaunch, our TodoList is empty. This is where Persistence would come into play. To implement persistence into your TodoList Application, I would recommend following this tutorial here: Persistence Tutorial

//2. Another issue with our TodoList is that users cannot remove Todo items once they are completed. Look into UITableViewDelegate. There is a method called tableView(_:commitEditingStyle:forRowAt:) that will allow us to implement a "Swipe to Delete". This method will use our TodoList.share.remove() function to remove the Todo for the specific index.
