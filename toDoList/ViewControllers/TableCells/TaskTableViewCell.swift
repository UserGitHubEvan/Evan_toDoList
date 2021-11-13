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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
