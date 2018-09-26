//
//  ManagingTasks.swift
//  TaskManager
//
//  Created by Andrew Beauchamp on 9/17/18.
//  Copyright © 2018 Andrew Beauchamp. All rights reserved.
//

import Foundation
//This function is used to make it so that the date for the task to be 7 days after the current date


class ManagingTasks {
    var tasks : [Task] = [Task(title: "Clean Room", detailsOfTask: "To organize items in the room to get it clean", endDate: "9/30/2019"), Task(title: "Clean Car", detailsOfTask: "To organize items in the car to get it clean", endDate: "9/30/2019"), Task(title: "Shopping", detailsOfTask: "Shopping for clothes", endDate: "9/30/2019")] //These tasks are place holders for testing the program
    
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
        var newTaskDetails = readLine()
        //Check to make sure input isn't nil or an empty string (validating input)
        while newTaskDetails == nil || newTaskDetails == "" {
            print("Please put in a valid input")
            newTaskDetails = readLine()
        }
        
        //Initiate new task with the title and the description
        let newTask = Task(title: newTaskTitle!, detailsOfTask: newTaskDetails!, endDate: "")
        
        //Add new task object to our tasks array
        tasks.append(newTask)
    }
    
    func markTasksCompleted ( ) {
        print("Please enter which Task you would like to mark as complete") //Prompting the user to enter the task
        for index in 0..<tasks.count {
            if tasks[index].completion == false { //completion == false so that the user can't mark a completed task completed again
                print("\(index). \(tasks[index].title)") //Give sthe title of the task an index/number for the user to type in
                
            }
        }
        if tasks.isEmpty  {
            print("-You have no tasks to mark as complete-") //Prompting the user to return to the menu when the task array is empty
            return //brings user back to the menu and breaks out of the function
        }
        var counter = 0
        for index in 0..<tasks.count {
            if tasks[index].completion == true{
                counter += 1
            }
            if counter == tasks.count {
                print("All tasks are completed")
                return
            }
        }
        
        let validTaskIndex = Array(0..<tasks.count) //This validation is to make sure if a user puts in a number in the array
        var userInput = Int(readLine( )!) //Input validation
        
        while userInput == nil || !validTaskIndex.contains(userInput!) {
            print("Invalid Input please enter a usable input")
            userInput = Int(readLine( )!)
        }
        for index in 0..<tasks.count {
            if index == userInput {  //Changes the tasks completion status to true based on what index the suer put in
                tasks[index].completion = true
                print("Task completed")
            }
        }
        
    }
    func markTasksUncomplete ( ) {
        print("Please enter which Task you would like to mark as uncomplete")//Prompting the user to enter the task
        for index in 0..<tasks.count {
            if tasks[index].completion == true { //completion == true so that the user can't mark a uncompleted task uncompleted again
                print("\(index). \(tasks[index].title)") //Give the title of the task an index/number for the user to type in
                
            }
        }
        if tasks.isEmpty {
            print("-You have no tasks to mark as uncomplete-") //Prompting the user to return to the menu when the task array is empty
            return //brings user back to the menu and breaks out of the function
        }
        var counter = 0
        for index in 0..<tasks.count {
            if tasks[index].completion == false{
                counter += 1
            }
            if counter == tasks.count {
                print("All tasks are uncompleted")
                return
            }
        }
        
        let validTaskIndex = Array(0..<tasks.count) //This validation is to make sure if a user puts in an input
        var userInput = Int(readLine( )!) //Input validation
        
        while userInput == nil || !validTaskIndex.contains(userInput!) {
            print("Invalid Input please enter a usable input")
            userInput = Int(readLine( )!)
        }
        
        for index in 0..<tasks.count {
            if index == userInput {  //Changes the tasks completion status to true based on what index the suer put in
                tasks[index].completion = false
                print("Task uncompleted")
            }
        }
    }
    
    func listOfAllTasks ( ) { //lists all tasks in the array
        for task in tasks {
            print("\(task.title)- \(task.detailsOfTask)")
        }
        if tasks.isEmpty {
            print("You have no tasks")
        }
    }
    
    func listOfUncompletedTasks ( ) {
        for task in tasks {
            if task.completion == false{ //If the task in the array is false then it is printed
                print("\(task.title)- \(task.detailsOfTask)")
            }
        }
        if tasks.isEmpty {
            print("You have no tasks")
        }
        var counter = 0
        for index in 0..<tasks.count {
            if tasks[index].completion == true{
                counter += 1
            }
            if counter == tasks.count {
                print("All tasks are completed")
                return
            }
        }
    }
        func listOfCompletedTasks ( ) {
            for completedTask in tasks {
                if completedTask.completion == true{ //If the task in the tasks array is completed then it is printed
                    print("\(completedTask.title)- \(completedTask.detailsOfTask)")
                }
            }
            if tasks.isEmpty {
                print("You have no tasks")
            }
            var counter = 0
            for index in 0..<tasks.count {
                if tasks[index].completion == false{
                    counter += 1
                }
                if counter == tasks.count {
                    print("All tasks are uncompleted")
                    return
                }
            }
    }
            func deleteATask ( ) {
                //List all of our task titles with a number for the user to select
                for index in 0..<tasks.count {
                    print("\(index). \(tasks[index].title)")
                }
                print("Please enter the number of the task want to remove")//Prompt the user to enter in an index
                if tasks.isEmpty {
                    print("-You have no tasks to delete-") //Prompting the user to return to the menu
                    return //brings user back to the menu and breaks out of the function
                }
                
                var userInput = Int(readLine()!)
                //Make var to hold all possible index for our array
                let validTaskIndex = Array(0..<tasks.count)
                //Checking to make sure the task array is empty and directing the user back to the menu to create a new task
                //Checking to make sure input is not nil and the number entered is not beyond the index of our array (validating the input)
                while userInput == nil || !validTaskIndex.contains(userInput!) {
                    print("Invalid Input please enter a usable input")
                    userInput = Int(readLine( )!)
                }
                //Removing the task from the array
                tasks.remove(at: userInput!)
                print("Task Deleted")
            }
            
}













