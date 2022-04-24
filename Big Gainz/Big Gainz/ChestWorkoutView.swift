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
            VStack(spacing: 20) {
                ForEach(0..<5) {
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(Color.red)
                }
            }
        }
        .frame(height: 350)

    }
}

struct ChestWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        ChestWorkoutView()
    }
}
