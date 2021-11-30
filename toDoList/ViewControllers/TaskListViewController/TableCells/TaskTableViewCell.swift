//
//  TaskTableViewCell.swift
//  toDoList
//
//  Created by MacBook Pro on 12.11.2021.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var createdDataLabel: UILabel!
    @IBOutlet weak var startDataLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var resultCreateDateLabel: UILabel!
    @IBOutlet weak var resultTaskDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fill(with model: Task) {
        
        titleLabel.text = model.title
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        
        resultCreateDateLabel.text = dateFormatter.string(from: model.createDate)
        resultTaskDateLabel.text = dateFormatter.string(from: model.taskDate)
    }
}
