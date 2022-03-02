//
//  ContentView.swift
//  Big Gainz
//
//  Created by Jason Leong on 3/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Text("Big Gainz")
                    .font((.system(size: 70, weight: .semibold, design: .serif)))
                    .foregroundColor(Color.orange)
                    .position(x: 200, y: 200)
            
                
                NavigationLink(destination: HomePageView()) {
                    Text("Let's Get Started!")
                    .frame(minWidth: 0, maxWidth: 250)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.black]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(30)
                    .font(.title)
                    .position(x: 200, y: 50)
                }
            }
            .background(Color.gray)
        }
//        Text("Big Gainz")
//            .font((.system(size: 50, weight: .semibold, design: .serif)))
//            .position(x: 200, y:200)
//
//        NavigationLink(destination: HomePageView()) {
//            Button(action: {
//                print("")
//            })
//                Text("Start")
//        }
    }
}
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}