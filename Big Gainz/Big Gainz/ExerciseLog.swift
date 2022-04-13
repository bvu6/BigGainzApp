//
//  ExerciseLog.swift
//  Big Gainz
//
//  Created by Ben on 4/12/22.
//

import SwiftUI

struct ExerciseLog: View {
    @State private var exercise: String = ""
    @State private var type: String = ""
    @State private var reps: String = ""
    @State private var set: String = ""
    @State private var intensity: String = ""
    @State private var weight: String = ""
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 330.0, height: 500.0)
            .position(x:215, y:305)
            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            .overlay(
                Group {
                    Text("New Workout")
                        .font(.headline)
                        .foregroundColor(.orange)
                        .multilineTextAlignment(.center)
                        .position(x: 215, y:80)
                    Text("Exercise:")
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                        .position(x: 115, y: 125)
                    TextField("Enter", text:$exercise)
                        .font(.system(size: 20, weight: .semibold))
                        .frame(width: 200.0, height: 20.0)
                        .foregroundColor(Color(.black))
                        .padding(.top, 5)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                        .position(x: 260, y: 125)
                    Text("Weight:")
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                        .position(x: 120, y: 175)
                    TextField("Enter", text:$weight)
                        .font(.system(size: 20, weight: .semibold))
                        .frame(width: 160.0, height: 20.0)
                        .foregroundColor(Color(.black))
                        .padding(.top, 5)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                        .position(x: 240, y: 175)
                        .keyboardType(/*@START_MENU_TOKEN@*/.decimalPad/*@END_MENU_TOKEN@*/)
                        
                    Text("Sets:")
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                        .position(x: 130, y: 225)
                        
                    TextField("Enter", text:$set)
                        .font(.system(size: 20, weight: .semibold))
                        .frame(width: 160.0, height: 20.0)
                        .foregroundColor(Color(.black))
                        .padding(.top, 5)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                        .position(x: 240, y: 225)
                        .keyboardType(/*@START_MENU_TOKEN@*/.decimalPad/*@END_MENU_TOKEN@*/)
                    Text("Reps:")
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                        .position(x: 130, y: 275)
                    TextField("Enter", text:$reps)
                        .font(.system(size: 20, weight: .semibold))
                        .frame(width: 160.0, height: 20.0)
                        .foregroundColor(Color(.black))
                        .padding(.top, 5)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                        .position(x: 240, y: 275)
                        .keyboardType(/*@START_MENU_TOKEN@*/.decimalPad/*@END_MENU_TOKEN@*/)
                    
                    
                       
               }
            )
            .overlay(
                Group{
                    Text("Type:")
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                        .position(x: 130, y: 325)
                    TextField("Enter", text:$type)
                        .font(.system(size: 20, weight: .semibold))
                        .frame(width: 160.0, height: 20.0)
                        .foregroundColor(Color(.black))
                        .padding(.top, 5)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                        .position(x: 240, y: 325)

                   
                    Text("Save")
                        .font(.system(size:14, weight: .bold))
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.orange)
                        .position(x: 220, y: 455)
                                        

                
                    
                
                    
                }
                )
        
            
          }
    }


struct ExerciseLog_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseLog()
    }
}
