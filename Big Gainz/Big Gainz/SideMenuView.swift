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
                Text("Workouts")
                    .font(.system(size: 40))
                    .position(x: 178, y: -70)
                    .foregroundColor(.white)
                    .padding()
                    

                NavigationLink(destination: ChestWorkoutView()){
                    Text("Chest")
                        .font(.system(size: 28))
                        .position(y: -80)
                        .foregroundColor(.orange)
                        .padding()
                        .frame(width: 200)
                }
                
                NavigationLink(destination: BackWorkoutView()){
                    Text("Back")
                        .font(.system(size: 28))
                        .position(x: 40, y: -80)
                        .foregroundColor(.orange)
                        .frame(width: 90, height: 90)
                        .padding()
                        
                }
                
                NavigationLink(destination: ArmWorkoutView()){
                    Text("Arms")
                        .font(.system(size: 28))
                        .position(x: 180, y: -80)
                        .foregroundColor(.orange)
                        .frame(width: 90, height: 90)
                        .padding()
                }
                
                NavigationLink(destination: LegWorkoutView()){
                    Text("Legs")
                        .font(.system(size: 28))
                        .position(x: 180, y:-80)
                        .foregroundColor(.orange)
                        .padding()
                }
            }
            .background(.black)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
