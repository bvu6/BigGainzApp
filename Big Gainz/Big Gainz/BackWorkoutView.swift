//
//  BackWorkoutView.swift
//  Big Gainz
//
//  Created by Ben on 4/19/22.
//

import SwiftUI

struct BackWorkoutView: View {
    var body: some View {
        ScrollView {
            VStack() {
                Text("Seated Row")
                    .font(.title)
                Text ("Lat Pull-Down")
                    .font(.title)
                Text ("Single Arm Cable Row")
                    .font(.title)
                Text ("Deadlift")
                    .font(.title)
                
            }
            //background(Color.gray)
        }
        .frame(height: 350)

    }
}

struct BackWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        BackWorkoutView()
    }
}
