//
//  AddTaskViewController.swift
//  DoIt
//
//  Created by Pujita Tipnis on 1/20/17.
//  Copyright © 2017 Pujita Tipnis. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwicth: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addBtnTapped(_ sender: Any) {
        //Create a Task object from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwicth.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //Pop back
        navigationController!.popViewController(animated: true)
    }

}
