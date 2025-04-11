//  Microwave.swift
//
//  Created by Santiago Hewett
//  Created on 2025/02/25
//  Version 1.0
//  Copyright (c) Santiago Hewett. All rights reserved.
//
// This program will calculate the amount of time it takes to microwave certain
// types and amounts of food


// Import Foundation library
import Foundation


// Constants as double to simplify calculations and it is sufficient for the value
let SUB_TIME: Double = 1.0
let PIZZA_TIME: Double = 0.75
let SOUP_TIME: Double = 1.75


func microwave() {
   // Welcome message
   print("This program will calculate the amount of time it takes to microwave certain types and amounts of food.")


   // Declare timeInMinutes variable
   var timeInMinutes: Double = 0


   // Declare foodAsString variable outside of the loop
   var foodAsString: String = ""


   // Declare minCookTime variable
   var minCookTime: Double = 0


   // Declare numberOfItemInt variable
   var numberOfItemInt: Int = 0


   // Repeat while loop to run until valid food and quantity is entered
   repeat {
       // Message to ask user for food
       print("Please enter the food you will be heating, Sub, Pizza or Soup: ")


       // Read user food as a string and use guard to make sure input is valid
       guard let foodAsStringLoop = readLine() else {
           // Error message
           print("Invalid input. Please enter a valid food.")
           // Continue to reset loop and ask for input again
           continue
       }


       // Make food as string available outside of the loop
       foodAsString = foodAsStringLoop


       // If statement for valid input .equals is used to compare strings
       // And .toLowerCase is used to make all input lower case
       if foodAsString.lowercased() == "sub"
               || foodAsString.lowercased() == "pizza"
               || foodAsString.lowercased() == "soup" {
           if foodAsString.lowercased() == "sub" {
               minCookTime = SUB_TIME
           } else if foodAsString.lowercased() == "pizza" {
               minCookTime = PIZZA_TIME
           } else {
               minCookTime = SOUP_TIME
           }
       } else {
           // Error message for invalid input
           print("Invalid input: \(foodAsString). Please enter Sub, Pizza or Soup.")
           // Continue the loop if the input is invalid
           continue
       }


       // Message to ask user for quantity
       print("Please enter the number of the food item(s) you will be heating(max 3 items): ")


       // Read user quantity of food as a string and use guard to make sure input is valid
       guard let numberOfItemStringLoop = readLine() else {
           // Error message
           print("Invalid input. Please enter a valid number of items.")
           // Continue to reset loop and ask for input again
           continue
       }
       // Make food as string available outside of the loop
       let numberOfItemString = numberOfItemStringLoop


       // Safely convert user quantity as a string to int and use guard to make sure input is valid
       guard let numberOfItemIntLoop = Int(numberOfItemString) else {
           // Error message
           print("Invalid input: \(numberOfItemString). Please enter 1, 2 or 3.")
           // Continue to reset loop and ask for input again
           continue
       }


       // Make number of items as int available outside of the loop
       numberOfItemInt = numberOfItemIntLoop


       // If statement for valid number of items
       if numberOfItemInt == 1 || numberOfItemInt == 2
           || numberOfItemInt == 3 {
           // Break the loop if the input is valid
           // And set time in minutes
           if numberOfItemInt == 1 {
               timeInMinutes = minCookTime
               break
           } else if numberOfItemInt == 2 {
               timeInMinutes = minCookTime * 1.5
               break
           } else {
               timeInMinutes = minCookTime * 2
               break
           }
       } else {
           // Error message for invalid input
           print("Invalid input: \(numberOfItemString). Please enter 1, 2 or 3.")
           // Continue the loop if the input is invalid
           continue
           }
   } while true


   // Calculate number of minutes it takes to microwave
   let totalMinutesInt: Int = Int(timeInMinutes)


   // Calculate number of seconds it takes to microwave
   let totalSecondsInt: Int = Int((timeInMinutes - Double(totalMinutesInt)) * 60)


   // Display the time back to the user in mins and secs
   print("The total time it takes to microwave \(numberOfItemInt) "
   + "\(foodAsString)(s) is: \(totalMinutesInt) minutes and "
   + "\(totalSecondsInt) seconds.")




}


// Call function
microwave()