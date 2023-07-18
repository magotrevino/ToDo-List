//
//  ListTableViewCell.swift
//  ToDo List
//
//  Created by Magaly Trevino on 7/17/23.
//

import UIKit

protocol ListTableViewCellDelegate: AnyObject {
    func checkBoxToggel(sender: ListTableViewCell)
}

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    weak var delegate: ListTableViewCellDelegate?
    
    var toDoItem: ToDoItem! {
        didSet {
            nameLabel.text = toDoItem.name
            checkBoxButton.isSelected = toDoItem.completed
        }
    }
    
    @IBAction func checkToggle(_ sender: UIButton) {
        delegate?.checkBoxToggel(sender: self)
    }
}
