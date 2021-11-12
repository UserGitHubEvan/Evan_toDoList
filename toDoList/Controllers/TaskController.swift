//
//  TaskController.swift
//  toDoList
//
//  Created by MacBook Pro on 12.11.2021.
//

import Foundation

class TaskController {
    
    var tasks: [Task] = [
        Task.init(title: "Some title", description: "Description1", taskDate: Date(), createDate: Date(), status: "Done"),
        Task.init(title: "1 Some title", description: "Description2", taskDate: Date(), createDate: Date(), status: "Progress"),
        Task.init(title: "2 Some title", description: "Description3", taskDate: Date(), createDate: Date(), status: "Progress"),
        Task.init(title: "3 Some title", description: "Description4", taskDate: Date(), createDate: Date(), status: "Progress"),
        Task.init(title: "New title", description: "Description5", taskDate: Date(), createDate: Date(), status: "Progress"),
        Task.init(title: "Task", description: "Description6", taskDate: Date(), createDate: Date(), status: "Done"),
        Task.init(title: "Read Book", description: "Description7", taskDate: Date(), createDate: Date(), status: "Done"),
        Task.init(title: "Jump", description: "Description8", taskDate: Date(), createDate: Date(), status: "Progress"),
        Task.init(title: "Sport", description: "Description9", taskDate: Date(), createDate: Date(), status: "Done"),
        Task.init(title: "Run", description: "Description10", taskDate: Date(), createDate: Date(), status: "Progress")
    ]
    
    func search(by title: String) -> [Task] {
        return tasks.filter { task in
            return (task.title != nil) ? task.title!.contains(title) : false
        }
    }
    
    func sortByDateNewest() -> [Task] {
        tasks.sort { task1, task2 in
            task1.createDate < task2.createDate
        }
        
        return tasks
    }
    
    func sortByDateOldest() -> [Task] {
        tasks.sort { task1, task2 in
            task1.createDate > task2.createDate
        }
        
        return tasks
    }
    
    func sortByTaskDueDate() -> [Task] {
        tasks.sort { task1, task2 in
            task1.taskDate > task2.createDate
        }
        
        return tasks
    }
    
//    func sortByTitleFromLetterA() -> [Task] {
//        tasks.sort { task1, letter = "A" in
//            task1.title == letter
//        }
//        
//        return tasks
//    }
}
