//
//  LoginInfoView.swift
//  Big Gainz
//
//  Created by Brian Che on 3/19/22.
//

import SwiftUI

struct LoginInfoView: View {
    // Placeholder variables will fix later for database
    @State private var userName: String = ""
    @State private var userAge: String = ""
    @State private var userHeight: String = ""
    @State private var userWeight: String = ""
    
    var body: some View {
            VStack() {
                Text("Big Gainz")
                    .font((.system(size: 70, weight: .semibold, design: .serif)))
                        .foregroundColor(Color.orange)
                        .position(x: 200)
                Text("Please fill out info below")
                    .position(x: 200, y: 10)
               
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 6)
                    .position(x: 180, y: 150)
                    .frame(width: 350, height: 350)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 350)
                    .foregroundColor(Color.gray)
                    .position(x: 200, y: 400)
                    .overlay(
                     Group {
                        Text("**Name:**")
                             .position(x: 90, y: -340)
                        TextField("", text: $userName)
                             .textFieldStyle(.roundedBorder)
                             .frame(width: 200)
                             .position(x: 240, y: -340)
                        Text("**Age:**")
                             .position(x: 82, y: -280)
                        TextField("", text: $userAge)
                             .textFieldStyle(.roundedBorder)
                             .frame(width: 200)
                             .position(x: 240, y: -280)
                        Text("**Height:**")
                             .position(x: 93, y: -220)
                        TextField("", text: $userHeight)
                             .textFieldStyle(.roundedBorder)
                             .frame(width:200)
                             .position(x: 240, y: -220)
                        Text("**Weight:**")
                             .position(x: 93, y: -160)
                        TextField("", text: $userWeight)
                              .textFieldStyle(.roundedBorder)
                              .frame(width:200)
                              .position(x: 240, y: -160)
                    
                    }
                    )
                NavigationLink(destination: MainLog()){
                Button {
                   
                }
            label:{
                Text("Enter")
                    .font(.headline)
                    .frame(width: 300, height: 50)
                    
                    .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.black]), startPoint: .leading, endPoint: .trailing))
                    .foregroundColor(.white)
                    .cornerRadius(20);

            }
                }
                
        
                 
            }
            .background(Color.gray)
            .ignoresSafeArea(.keyboard)
        
    }
}

struct LoginInfoView_Previews: PreviewProvider {
    static var previews: some View {
        LoginInfoView()
    }
}
