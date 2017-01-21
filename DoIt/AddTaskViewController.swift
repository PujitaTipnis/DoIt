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
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addBtnTapped(_ sender: Any) {
        //Create a Task object from the outlet information
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwicth.isOn
        
        //Add new task to array in previous ViewController
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
