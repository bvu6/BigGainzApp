//
//  ExerciseLog.swift
//  Big Gainz
//
//  Created by Ben on 4/12/22.
//

import SwiftUI


struct ExerciseLog: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    @State private var exercise: String = ""
    @State private var type: String = ""
    @State private var reps: Double = 0
    @State private var set: Double = 0
    @State private var weight: Double = 0
    var body: some View {
        Form{
            Section{
                TextField("Exercise Name", text: $exercise)
                TextField("Type", text: $type)
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
                    Button("Save"){
                        DataController().addExercise(name: exercise, weight: weight, sets: set, reps: reps, type: type, context: managedObjContext)
                        dismiss()
                    }
                    Spacer()
                }
            }
                    
                    
                       
               }
        
        
            
          }
    }


struct ExerciseLog_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseLog()
    }
}
