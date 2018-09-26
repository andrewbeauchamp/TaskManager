//
//  main.swift
//  TaskManager
//
//  Created by Andrew Beauchamp on 9/17/18.
//  Copyright © 2018 Andrew Beauchamp. All rights reserved.
//

import Foundation
print("Welcome to your Task Manager!")
print("Enter a number that corresponds with the menu options.") //Propmting the user to enter in a number that corresponds with the menu options
let taskManagerMenu = Menu( )
taskManagerMenu.go()//This handles running the logic loop for the task manager Once we break out of this function the program will close


