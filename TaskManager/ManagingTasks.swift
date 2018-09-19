//
//  ManagingTasks.swift
//  TaskManager
//
//  Created by Andrew Beauchamp on 9/17/18.
//  Copyright © 2018 Andrew Beauchamp. All rights reserved.
//

import Foundation

func deadLine ( ) -> Date{
    let currentDate = Date( )
    print(currentDate)
    
    let dateFormatter = DateFormatter ( )
    dateFormatter.dateFormat = "MM/dd/yyy"
    print(dateFormatter.string(from: currentDate))
    let deadline = Calendar.current.date(byAdding: .day, value: 7, to: currentDate)
    
    if let newDate = deadline {
        print(dateFormatter.string(from: newDate))
    }
    return deadline!
}

class ManagingTasks {
    var tasks : [Task] = [Task(title: "Clean Room", detailsOfTask: "To organize items in the room to get it clean", endDate: deadLine()), Task(title: "Clean Car", detailsOfTask: "To organize items in the car to get it clean", endDate: deadLine()), Task(title: "Shopping", detailsOfTask: "Shopping for clothes", endDate: deadLine())]
    
    func addTask ( ) {
        print("Please enter the task you would like to add")
        //Get input from the user
        var newTaskTitle = readLine()
        //Check to make sure input isnt nil or an empty string (validating input)
        while newTaskTitle == nil || newTaskTitle == ""{
            print("Please put in a valid input")
            newTaskTitle = readLine()
        }
        
        print("Please enter the details of your task.")
        //get input from user
        let newTaskDetails = readLine()
        //Check to make sure input isn't nil or an empty string (validating input)
        while newTaskTitle == nil || newTaskTitle == "" {
            print("Please put in a valid input")
            newTaskTitle = readLine()
        }
        
        //Initiate new game with the title
        let newTask = Task(title: newTaskTitle!, detailsOfTask: newTaskDetails!, endDate: deadLine())
        
        //Add new game object to our game array
        tasks.append(newTask)
    }
    
    func markTasks ( ) {
        print("Please enter which Task you would like to mark as complete")
        for index in 0..<tasks.count {
            if tasks[index].completion == false {
                print("\(index). \(tasks[index].title)") //Give sthe title of the task an index for the user to type in
            }
        }
        var userInput = Int(readLine( )!) //Input validation
        while userInput == nil {
            print("Invalid Input please enter a usable input")
            userInput = Int(readLine( )!)
        }
        for index in 0..<tasks.count {
            if index == userInput {
                tasks[index].completion = true
            }
        }
    }
    func listOfAllTasks ( ) {
        for task in tasks {
            print(task.title)
        }
    }
    func listOfUncompletedTasks ( ) {
        for task in tasks {
            if task.completion == false{
                print(task.title)
            }
        }
    }
    
    func listOfCompletedTasks ( ) {
        for completedTask in tasks {
            if completedTask.completion == true{
                print(completedTask.title)
            }
        }
    }
    
    func deleteATask ( ) {
        //List all of our task titles with a number for the user to select
        for index in 0..<tasks.count {
            print("\(index). \(tasks[index].title)")
        }
        print("Please enter the number of the task want to remove")
        var userInput = Int(readLine()!)
        //Make var to hold all possible index for our array
        let validTaskIndex = Array(0..<tasks.count)
        //Checking to make sure input is not nil and the number entered is not beyond the index of our array (validating the input)
        while userInput == nil || !validTaskIndex.contains(userInput!) {
            print("Invalid Input please enter a usable input")
            userInput = Int(readLine( )!)
        }
        //Removing the game
        tasks.remove(at: userInput!)
    }
    
    func editATask ( ) {
       
      
        
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}











