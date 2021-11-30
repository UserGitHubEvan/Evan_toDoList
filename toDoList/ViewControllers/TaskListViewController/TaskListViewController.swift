//
//  TaskListViewController.swift
//  toDoList
//
//  Created by MacBook Pro on 01.11.2021.
//

import UIKit

class TaskListViewController: BaseViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let taskController = TaskController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true
        
        prepareTableView()
    }
    
    func prepareTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: "TaskTableViewCell", bundle: nil), forCellReuseIdentifier: "TaskCell")
    }
    
    @IBAction func deleteTask(_ sender: Any) {
        self.taskController.removeTask()
        tableView.reloadData()
    }
    
}

extension TaskListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        taskController.tasksCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") as! TaskTableViewCell
        
        cell.fill(with: taskController.task(by: indexPath.row))
        
        return cell
    }
    
}
