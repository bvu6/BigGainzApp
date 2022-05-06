//
//  ContentView.swift
//  Big Gainz
//
//  Created by Jason Leong on 3/1/22.
//

import SwiftUI


struct ContentView: View{
    
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            
            if isLoading {
                LoadingView()
            }
            
            else {
                NavigationView {
                    MainLog()
                }
            }
               
        }
        .onAppear { startFakeNetworkCall() }
    }
    
    func startFakeNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isLoading = false
        }
    }
}
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            Image("Logo")
                .resizable()
                .frame(width: 300, height: 300)
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .black))
                .scaleEffect(1.5)
                .position(x: 300, y: 580)

            Text("Loading App")
                .position(x: 180, y: 580)
                .font(.system(size: 30))
        }
    }
}

/*
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
 
 */
