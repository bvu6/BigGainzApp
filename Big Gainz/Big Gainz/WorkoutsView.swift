//
//  WorkoutsView.swift
//  Big Gainz
//
//  Created by Ben on 4/2/22.
//

import SwiftUI

struct WorkoutsView: View {
    var body: some View {
        NavigationView{
            ZStack{
            Text("Types of workouts")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .position(x:225, y: 0)
            }
            .background(Color.gray)
        }
            
    }
}

struct WorkoutsView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsView()
    }
}
