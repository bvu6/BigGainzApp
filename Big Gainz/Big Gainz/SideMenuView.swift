//
//  SideMenuView.swift
//  Big Gainz
//
//  Created by Ben on 3/19/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack {
              Text("History")
                .font(.title)
                .foregroundColor(.white)
              
              Divider()
                .frame(width: 200, height: 2)
                .background(Color.white)
                .padding(.horizontal, 16)
            
              Text("Workouts")
                .font(.title)
                .foregroundColor(.white)
              
                Spacer()
            }
            .padding(16)
            .background(Color.black)
            .edgesIgnoringSafeArea(.bottom)
          }
    }


struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
