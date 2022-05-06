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
                        ExerciseEntity in NavigationLink(destination : EditExerciseView(exercise: ExerciseEntity)){
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
                
                NavigationLink(destination: SideMenuView()){
                    Image(systemName: "text.justify")
                        .font(.title)
                        .foregroundColor(.orange)
                        .position(x: 225, y: 35)
                        
                  
                  
                }
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


          
          .navigationTitle("Workout Log")
          .navigationBarTitleDisplayMode(.inline)
    

          
        
      }
    }
}

struct MainLog_Previews: PreviewProvider {
    static var previews: some View {
        MainLog()
    }
}
