//
//  ArmWorkoutView.swift
//  Big Gainz
//
//  Created by Ben on 4/19/22.
//

import SwiftUI
import AVKit

struct ArmWorkoutView: View {
    
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView {
            VStack() {

                Group{
                    
                Text("Dumbell Lateral Raises")
                        .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()
                Text("Targets: building width in your upper body which gives you the V shape")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Slowly raise the dumbbells up to around shoulder height")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Pause at the top of the movement, and then slowly lower the weight back to the starting position")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "squat", withExtension: "MOV")!)).frame(height: 200)
                    Spacer()
                }
                Group{
        
                Text ("Shoulder Press")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()
                Text("Targets: shoulders and upper back")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Sit with your body upright and core muscles braced, looking straight ahead.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Press the dumbells directly overhead and do not tilt your hips forward during the move")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    
                }
                Group{
                  
                Text ("Tricep Row Pushdown")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()
                Text("Targets: triceps, all 3 heads of the tricep")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
               
                Text("Push down until your elbows are fully extended but not in the straight, locked position. Keep your elbows close to your body and bend your knees slightly on the pushdown.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                Group{
                Text("EZ-Bar Preacher Curl")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()
                    Text("Targets: biceps")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                
                    Text("Curl the weight up, keeping your upper arms on the bench, until your forearms are vertical")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    Text("Pause for a second at the top of the curl, then slowly lower the weight until your arms are fully extended once again")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                Group{

                Text("Hammer Curls")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()
                    Text("Targets: biceps")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    Text("Sit down against the workout bench, keeping your back straight and your abdominal muscles tight")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    Text("Lift each dumbbell, palms up, toward your shoulders. It’s important to keep your upper arms tight so that you can isolate the biceps brachii muscle as you move your lower arms only")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    Text("Slowly lower the dumbbells back down to your starting position. Don’t release the weights too fast or you could strain your muscles")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    
                    
                }
                

            }
            //background(Color.gray)
            .padding(16)
        }
        .frame(height: .infinity)

    }
}

struct ArmWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        ArmWorkoutView()
    }
}
