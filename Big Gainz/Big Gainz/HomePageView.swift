//
//  HomePageView.swift
//  Big Gainz
//
//  Created by Jason Leong on 3/2/22.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        Text("Home Page")
        NavigationLink(destination: LoginView()) {
            Text("Login")
            .frame(minWidth: 0, maxWidth: 250)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.black]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(30)
            .font(.title)
            .position(x: 200, y: 50)
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
