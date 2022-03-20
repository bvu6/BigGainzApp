//
//  LoginInfoView.swift
//  Big Gainz
//
//  Created by Brian Che on 3/19/22.
//

import SwiftUI

struct LoginInfoView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Big Gainz")
                    .font((.system(size: 70, weight: .semibold, design: .serif)))
                        .foregroundColor(Color.orange)
                        .position(x: 200)
                Text("Please fill out info below")
                    .position(x: 200)
            
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 6)
                    .position(x: 180, y: 150)
                    .frame(width: 350, height: 350)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 350)
                    .foregroundColor(Color.gray)
                    .position(x: 200, y: 400)
                    .overlay(
                     Group { //<-- Here
                        Text("**Name:**")
                             .position(x: 90, y: -340)
                        Text("**Age:**")
                             .position(x: 82, y: -280)
                        Text("**Height:**")
                             .position(x: 93, y: -220)
                        Text("**Weight:**")
                             .position(x: 93, y: -160)
                     }
                     )
                
                
                NavigationLink(destination: MainLog()) {
                    Text("Enter")
                    .frame(minWidth: 0, maxWidth: 100)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.black]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(30)
                    .font(.title)
                    .position(x: 200, y: -155)
                }
            }
            .background(Color.gray)
        }
    }
}

struct LoginInfoView_Previews: PreviewProvider {
    static var previews: some View {
        LoginInfoView()
    }
}
