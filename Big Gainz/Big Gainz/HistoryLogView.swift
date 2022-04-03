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
            ZStack{
            Text("History")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .position(x:225, y: 0)
            }
            .background(Color.gray)
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
