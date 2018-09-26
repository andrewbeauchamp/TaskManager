//
//  Menu.swift
//  TaskManager
//
//  Created by Andrew Beauchamp on 9/17/18.
//  Copyright © 2018 Andrew Beauchamp. All rights reserved.
//

import Foundation
//Menu for the functions and switch statement
class Menu {
    var shouldQuit = false  //when this is true we should quit running the program
    func go ( ) {
        
        //This function is going to handle making the menu run, it will display the menu and take user input until the user wishes to quit the application
        while !shouldQuit {
            printMenu()
            var input = getInput()
            //We need to add input validation function to make sure the value falls between the index we have for the array of tasks
            while !validateInput(input) {
                //Display menu again
                printMenu()
                //Get more input
                input = getInput()
            }
            handleInput(input)
            
        }
    }
    
    func validateInput(_ input: String) -> Bool {  //This function is for the while loop above to print the menu after the input is validated
        let validMenuOptions = Array(1...8)
        guard let number = Int(input)  else{
            return false
        }
        return validMenuOptions.contains(number)
    }
    
    
    func printMenu ( ) {
        //Printing the Menu for the actions that the user can do
        print("""

        -> Menu Options <-
    1. Create new tasks
    2. List of all tasks
    3. List of only uncompleted tasks
    4. List of only completed tasks
    5. Mark Task as completed
    6. Mark a task as uncompleted
    7. Delete a task
    8. Exit
""")
    }
    //This is where the user calls the functions from Managingtasks
    let taskManager = ManagingTasks( )
    func handleInput (_ input : String ) { //Make a function called handleInput that takes our user input as a parameter and depending on what they print out what should we do
        switch input { //This switch statement is to make it easier to call the functions that are in the menu
        case "1":
            print("You have selected to create a new task") //All print statements above a function that was called is to prompt the user to type something in
            taskManager.addTask()
            
        case "2":
            print("You have selected to see a list of all tasks.")
            taskManager.listOfAllTasks()
            
        case "3":
            print("You have selected to see a list of your uncompleted tasks.")
            taskManager.listOfUncompletedTasks()
            
        case "4":
            print("You have selected to see a list of your completed tasks.")
            taskManager.listOfCompletedTasks()
            
        case "5":
            print("You have selected to mark a task as completed")
            taskManager.markTasksCompleted()
            
        case "6":
            print("You have selected to mark a task as uncomplete")
            taskManager.markTasksUncomplete()
            
        case "7":
            print("You have selected to delete a task")
            taskManager.deleteATask()
            
        case "8":
            print("You have selected to exit, Thank you for using this application")
            exit(0)
        default:
            break
        }
    }
    
    func getInput( ) -> String {
        //Take user input using readLine Check to make sure that the input isn't nil or its not an empty string. If its a valid input return the input otherwise make the user enter input again
        var  userInput = readLine()
        while userInput == nil || userInput == ""{
            print("Please put in a valid input")
            userInput = readLine()
        }
        return userInput!
    }
}
