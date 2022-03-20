//
//  MainLog.swift
//  Big Gainz
//
//  Created by Ben on 3/19/22.
//

import SwiftUI

struct MainLog: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Workout Log")
                    .font((.system(size: 30, weight: .semibold, design: .serif)))
                    .foregroundColor(Color.orange)
                    .position(x: 200, y: -100)
                Button{
                    
                }
            label:{
                Text("+")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.orange)
                    .clipShape(Circle())
                    .position(x: 325, y: 250)
                
            }
            .toolbar {
                    
                    Button {
                      
                    } label: {
                        Image(systemName: "text.justify")
                            .font(.title)
                            .foregroundColor(.orange)
                    }
                      
                
              
            }
                
                
            }
            
            .background(Color.gray)
        }
           
    }
}

struct MainLog_Previews: PreviewProvider {
    static var previews: some View {
        MainLog()
    }
}
