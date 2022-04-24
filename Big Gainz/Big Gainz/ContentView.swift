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
                Image("Logo")
                    .resizable()
                    .scaledToFit()
            
                NavigationLink(destination: SignUpView()) {
                    Text("Let's Get Started!")
                    .frame(minWidth: 0, maxWidth: 250)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.black]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(30)
                    .font(.title)
                    .position(x: 210, y: 70)
                }
            }
            .background(Color.gray)
        }
    }
}
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

