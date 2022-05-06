//
//  WorkoutLogView.swift
//  Big Gainz
//
//  Created by Ben on 4/2/22.
//

import SwiftUI

struct HistoryLogView: View {
   
    var body: some View {
        NavigationView{
            
            VStack(spacing:20){
 
            Text("History")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .position(x:225, y: 30)

            }
    }
    }
}

struct HistoryLogView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryLogView()
            
        }
    }
}
