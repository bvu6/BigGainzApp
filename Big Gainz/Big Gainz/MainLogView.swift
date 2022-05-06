//
//  MainLog.swift
//  Big Gainz
//
//  Created by Ben on 3/19/22.
//

import SwiftUI
import CoreData


struct MainLog: View {
    @State private var showMenu: Bool = false
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest (sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var exercise: FetchedResults<ExerciseEntity>
    @State private var showingAddView = false
    
    private func deleteExercise(offsets:IndexSet){
        withAnimation{
            offsets.map{ exercise[$0]}.forEach(managedObjContext.delete)
            DataController().save(context: managedObjContext)
        }
            
        }
    
    
    var body: some View {

        NavigationView{
            VStack(alignment:.leading){
                List{
                    ForEach(exercise){
                        ExerciseEntity in NavigationLink(destination : Text ("\(ExerciseEntity.weight)")){
                            HStack{
                                VStack(alignment:.leading,spacing:6){
                                    Text(ExerciseEntity.name!)
                                        .bold()
                                }
                                Spacer()
                                Text(calcTimeSince(date:ExerciseEntity.date!))
                                    .foregroundColor(.gray)
                                    .italic()
                            }
                            
                        }
                    }
                    .onDelete(perform: deleteExercise)
                }
                .listStyle(.plain)
            }
            .toolbar{
                ToolbarItem (placement: .navigationBarTrailing) {
                    Button{
                        showingAddView.toggle()
                    } label: {
                        Label("Add Exercise", systemImage: "plus.circle")
                    }
                    
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    EditButton()
                }
            }
            .sheet(isPresented: $showingAddView){
                ExerciseLog()
            }
            .navigationViewStyle(.stack)

          ZStack {
 
            Color.gray.ignoresSafeArea(.all, edges: .all)
            
             // GeometryReader { geometry in
                      //ExerciseLog()
                      //.position(x: geometry.frame(in: .local).midX, y: geometry.frame(in: .local).midY)
                 // }
            
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
