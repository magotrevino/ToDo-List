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
    
    weak var delegate: ListTableViewCellDelegate?
    

    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func checkToggle(_ sender: UIButton) {
        delegate?.checkBoxToggel(sender: self)
    }
}
