//
//  EditExerciseView.swift
//  Big Gainz
//
//  Created by Ben on 5/6/22.
//

import SwiftUI

struct EditExerciseView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss

    var exercise: FetchedResults<ExerciseEntity>.Element
    
    @State private var name = ""
    @State private var type = ""
    @State private var reps: Double = 0
    @State private var set: Double = 0
    @State private var weight: Double = 0
    
    var body: some View {
        Form{
            Section{
                TextField("(\(exercise.name!)", text: $name)
                TextField("\(exercise.type!)", text: $type)
                    .onAppear{
                        name = exercise.name!
                        weight = exercise.weight
                        
                    }
                VStack{
                
                    Text("Weight: \(Int(weight))")

                    Slider(value: $weight, in: 0...1000, step: 5)
                        
                    Text("Sets:\(Int(set))")
                    Slider(value: $set, in: 0...20, step: 1)
                    
                    Text("Reps: \(Int(reps))")
                    Slider(value: $reps, in: 0...20, step: 1)
                    
                }
                .padding()
                
                HStack{
                    Spacer()
                    Button("Submit"){
                        DataController().addExercise(name: name, weight: weight, sets: set, reps: reps, type: type, context: managedObjContext)
                        dismiss()
                    }
                    Spacer()
                }
                
                
            }
        }
    }
}

