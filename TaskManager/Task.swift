//
//  Task.swift
//  TaskManager
//
//  Created by Andrew Beauchamp on 9/17/18.
//  Copyright © 2018 Andrew Beauchamp. All rights reserved.
//

import Foundation

//This is where the task class will go
/*Task Data Model:
The Task Data Model should have the following properties:
Title
Details of task
Completion Status
Complete By Date
*/

class Task {
    var title: String
    var detailsOfTask: String
    var completion = false
    var endDate: Date
    
    init(title: String, detailsOfTask: String, endDate: Date) {
        self.title = title
        self.detailsOfTask = detailsOfTask
        self.endDate = endDate
    }
}
