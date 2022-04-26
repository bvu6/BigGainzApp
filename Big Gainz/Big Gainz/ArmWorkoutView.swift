//
//  ArmWorkoutView.swift
//  Big Gainz
//
//  Created by Ben on 4/19/22.
//

import SwiftUI

struct ArmWorkoutView: View {
    var body: some View {
        ScrollView {
            VStack() {

                Group{
                    
                Text("Dumbell Lateral Raises")
                        .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("Exercise for building width in your upper body which gives you the V shape")
                    .multilineTextAlignment(.center)
                Text("Slowly raise the dumbbells up to around shoulder height")
                    .multilineTextAlignment(.center)
                Text("Pause at the top of the movement, and then slowly lower the weight back to the starting position")
                    .multilineTextAlignment(.center)
        
                Text ("Shoulder Press")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("One of the best exercises for strengthening your shoulders and upper back")
                    .multilineTextAlignment(.center)
                Text("Sit with your body upright and core muscles braced, looking straight ahead.")
                    .multilineTextAlignment(.center)
                Text("Press the dumbells directly overhead and do not tilt your hips forward during the move")
                    .multilineTextAlignment(.center)
                    
                }
                Group{
                  
                Text ("Tricep Row Pushdown")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("One of the best exercises for triceps development and works on all 3 heads of the tricep")
                    .multilineTextAlignment(.center)
               
                Text("Push down until your elbows are fully extended but not in the straight, locked position. Keep your elbows close to your body and bend your knees slightly on the pushdown.")
                    .multilineTextAlignment(.center)
                
                Text("EZ-Bar Preacher Curl")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Text("Curl the weight up, keeping your upper arms on the bench, until your forearms are vertical")
                    Text("Pause for a second at the top of the curl, then slowly lower the weight until your arms are fully extended once again")

                Text("Incline Dumbell Curls")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Text("Sit down against the workout bench, keeping your back straight and your abdominal muscles tight")
                    Text("Lift each dumbbell, palms up, toward your shoulders. It’s important to keep your upper arms tight so that you can isolate the biceps brachii muscle as you move your lower arms only")
                    Text("Slowly lower the dumbbells back down to your starting position. Don’t release the weights too fast or you could strain your muscles")
                    
                    
                }
                

            }
            //background(Color.gray)
        }
        .frame(height: 350)

    }
}

struct ArmWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        ArmWorkoutView()
    }
}
