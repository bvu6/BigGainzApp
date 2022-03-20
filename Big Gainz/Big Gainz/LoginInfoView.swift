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
                    .stroke(Color.black, lineWidth: 10)
                    .position(x: 155, y: 150)
                    .frame(width: 300, height: 300)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 300)
                    .foregroundColor(Color.gray)
                    .position(x: 200, y: -158)
                    .overlay(
                     Group { //<-- Here
                        Text("Name:")
                             .position(x: 100, y: -250)
                        Text("Age:")
                             .position(x: 92, y: -200)
                        Text("Height:")
                             .position(x: 100, y: -150)
                        Text("Weight:")
                             .position(x: 100, y: -100)
                     }
                     )
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
