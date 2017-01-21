//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Pujita Tipnis on 1/21/17.
//  Copyright © 2017 Pujita Tipnis. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task = Task()
    var previousVC = TasksViewController()
    
    @IBOutlet weak var taskLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        taskLabel.text = task.name
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
