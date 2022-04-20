//
//  SideMenuView.swift
//  Big Gainz
//
//  Created by Ben on 3/19/22.
//

import SwiftUI

struct SideMenuView: View {
    @State var expand = false
    var body: some View {
        VStack {
            NavigationLink(destination: HistoryLogView()){
              Text("History")
                .font(.title)
                .foregroundColor(.white)
            }
              
              Divider()
                .frame(width: 200, height: 2)
                .background(Color.white)
                .padding(.horizontal, 16)
            HStack{
              Text("Workouts")
                .font(.title)
                .foregroundColor(.white)
                Image(systemName: expand ? "chevron.up":"chevron.down").resizable().frame(width:13, height:9.0).foregroundColor(.white)
            }
                .onTapGesture {
                    self.expand.toggle()
                }
            if expand {
                VStack{
                    Divider()
                        .frame(width: 200, height: 2)
                        .padding(.horizontal, 16)
                    NavigationLink(destination: ChestWorkoutView()){
                    Text("Chest").foregroundColor(.white).font(.title)
                }
                    Divider()
                        .frame(width: 200, height: 2)
                       // .background(Color.white)
                        .padding(.horizontal, 16)
                    
                    NavigationLink(destination: BackWorkoutView()){
                        Text("Back").foregroundColor(.white).font(.title)
                    }
                    Divider()
                        .frame(width: 200, height: 2)
                        //.background(Color.white)
                        .padding(.horizontal, 16)
                    NavigationLink(destination: ArmWorkoutView()){
                        Text("Arms").foregroundColor(.white).font(.title)
                    }
                    Divider()
                        .frame(width: 200, height: 2)
                        //.background(Color.white)
                        .padding(.horizontal, 16)
                    NavigationLink(destination: LegWorkoutView()){
                        Text("Legs").foregroundColor(.white).font(.title)
                    }
                
            }
            }
            
            
              
                Spacer()
            }
            .padding(16)
            .background(Color.black)
            .edgesIgnoringSafeArea(.bottom)
          }
    }


struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
