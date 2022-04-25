//
//  LegWorkoutView.swift
//  Big Gainz
//
//  Created by Ben on 4/19/22.
//

import SwiftUI

struct LegWorkoutView: View {
    var body: some View {
        ScrollView {
            VStack() {
                Text("Squat")
                    .font(.title)
                Text ("Walking Lunges")
                    .font(.title)
                Text ("Hip Thrusts")
                    .font(.title)
                Text ("Goblet Squat")
                    .font(.title)
                Text ("Leg Curls")
                    .font(.title)
                
            }
            //background(Color.gray)
        }
        .frame(height: 350)

    }
}

struct LegWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        LegWorkoutView()
    }
}
