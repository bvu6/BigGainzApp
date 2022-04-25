//
//  ChestWorkoutView.swift
//  Big Gainz
//
//  Created by Ben on 4/19/22.
//

import SwiftUI

struct ChestWorkoutView: View {
    var body: some View {
        ScrollView {
            VStack() {
                Text("Bench Press")
                    .font(.title)
                Text ("Incline Dumbell Press")
                    .font(.title)
                Text ("Cable Decline Press")
                    .font(.title)
                Text ("Low Cable Flies")
                    .font(.title)
                
            }
            //background(Color.gray)
        }
        .frame(height: 350)

    }
}

struct ChestWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        ChestWorkoutView()
    }
}
