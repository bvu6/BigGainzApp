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
                Text("WORKOUTS")
                    .font(.system(size: 40))
                    .frame(width: 400, height: 50)
                    .foregroundColor(.white)
                
                NavigationLink(destination: ChestWorkoutView()){
                    Text("Chest")
                        .font(.system(size: 28))
                        .foregroundColor(.orange)
                        .padding()
                        .frame(width: 150)
                }
                
                NavigationLink(destination: BackWorkoutView()){
                    Text("Back")
                        .font(.system(size: 28))
                        .foregroundColor(.orange)
                        .padding()
                        .frame(width: 150)
                       
                        
                }
                
                NavigationLink(destination: ArmWorkoutView()){
                    Text("Arms")
                        .font(.system(size: 28))
                        .foregroundColor(.orange)
                        .padding()
                        .frame(width: 150)
                        
                }
                
                NavigationLink(destination: LegWorkoutView()){
                    Text("Legs")
                        .font(.system(size: 28))
                        .foregroundColor(.orange)
                        .padding()
                        .frame(width: 150)
                        
                }
                
            }
            .frame(width: 400.0, height: 900.0)
            .background(.black)
           
            
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
