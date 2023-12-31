//
//  ToDoItem.swift
//  ToDo List
//
//  Created by Magaly Trevino on 7/16/23.
//

import Foundation

struct ToDoItem: Codable {
    var name: String
    var date: Date
    var notes: String
    var reminderSet: Bool
    var notificationID: String?
    var completed: Bool
    
    
}
