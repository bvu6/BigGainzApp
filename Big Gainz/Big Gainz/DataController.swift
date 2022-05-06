//
//  DataController.swift
//  Big Gainz
//
//  Created by Ben on 5/6/22.
//

import Foundation
import CoreData


class DataController: ObservableObject{
    let container =  NSPersistentContainer(name:"ExerciseContainer")
    init(){
        container.loadPersistentStores{desc,error in if let error = error{
            print("Failed to load the data \(error.localizedDescription)")
        }
            
        }
    }
    func save(context: NSManagedObjectContext){
        do{
            try context.save()
            print("Data saved")
        } catch{
            print("Data not saved ")
        }
    }
    func addExercise(name:String, weight: Double, sets: Double, reps: Double, type: String, context: NSManagedObjectContext){
        let exercise = ExerciseEntity(context: context)
        exercise.id = UUID()
        exercise.date = Date()
        exercise.name = name
        exercise.weight = weight
        exercise.sets = sets
        exercise.reps = reps
        exercise.type=type
        
        save(context: context)
        
    }
    
    func editExercise(exercise: ExerciseEntity, name:String, weight: Double, sets: Double, reps: Double, type: String, context: NSManagedObjectContext){
        exercise.name = name
        exercise.date = Date()
        exercise.weight = weight
        exercise.sets = sets
        exercise.reps = reps
        exercise.type=type
        
        save(context: context)
    }
}
