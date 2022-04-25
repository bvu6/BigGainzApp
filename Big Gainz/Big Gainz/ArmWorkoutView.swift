//
//  ArmWorkoutView.swift
//  Big Gainz
//
//  Created by Ben on 4/19/22.
//

import SwiftUI

struct ArmWorkoutView: View {
    var body: some View {
        ScrollView {
            VStack() {
                Text("Dumbell Lateral Raises")
                    .font(.title)
                Text ("Shoulder Press")
                    .font(.title)
                Text ("Front Raises")
                    .font(.title)
                Text ("Tricep Row Pushdown")
                    .font(.title)
                Text("EZ-Bar Preacher Curl")
                    .font(.title)
                Text ("Hammer Curls")
                    .font(.title)
                Text("Incline Dumbell Curls")
                    .font(.title)

            }
            //background(Color.gray)
        }
        .frame(height: 350)

    }
}

struct ArmWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        ArmWorkoutView()
    }
}
