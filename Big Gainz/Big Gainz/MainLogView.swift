//
//  MainLog.swift
//  Big Gainz
//
//  Created by Ben on 3/19/22.
//

import SwiftUI

struct MainLog: View {
    @State private var showMenu: Bool = false
    
    var body: some View {
        NavigationView {
          
          ZStack {
            
            Color.gray.ignoresSafeArea(.all, edges: .all)
            
              GeometryReader { geometry in
                      ExerciseLog()
                      .position(x: geometry.frame(in: .local).midX, y: geometry.frame(in: .local).midY)
                  }
            
            GeometryReader { _ in
              
              HStack {
                Spacer()
                
                SideMenuView()
                  .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
                  .animation(.easeInOut(duration: 0.4), value: showMenu)
              }
              
            }
            .background(Color.black.opacity(showMenu ? 0.5 : 0))
            
          }
          
          .navigationTitle("Workout Log")
          .navigationBarTitleDisplayMode(.inline)
          .toolbar {
            
            Button {
              self.showMenu.toggle()
            } label: {
              
              if showMenu {
                
                Image(systemName: "xmark")
                  .font(.title)
                  .foregroundColor(.orange)
                
              } else {
                Image(systemName: "text.justify")
                  .font(.title)
                  .foregroundColor(.orange)
              }
              
            }
          }
        }
      }
}

struct MainLog_Previews: PreviewProvider {
    static var previews: some View {
        MainLog()
    }
}
