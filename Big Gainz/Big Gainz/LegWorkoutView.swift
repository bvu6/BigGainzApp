//
//  LegWorkoutView.swift
//  Big Gainz
//
//  Created by Ben on 4/19/22.
//

import SwiftUI
import AVKit

struct LegWorkoutView: View {
    
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView {
            VStack() {
                Group{
                Text("Squat")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()
                Text("Targets: quadriceps, hamstrings, glutes, abdominals, and calves")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Stand with feet slightly wider than hip-width apart, with toes slightly turned outward")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Tighten up your core to stabilize yourself, then with your chest thrust upward, start to shift your weight back into your heels")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Continue to lower yourself until your thighs are almost parallel to the floor. Your feet should remain flat on the ground")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    
                }
                
                VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "squat", withExtension: "MOV")!)).frame(height: 200)
                
                Group{
                
                Text ("Walking Lunges")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()
                Text("Targets: Quadriceps, glutes, hamstrings, calves, core")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Take a wide step forward with your right foot—plant it roughly two feet ahead, allowing your left heel to lift naturally as you step forward")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Bend both knees and lower your back knee toward the floor. Stop just before it touches down")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                
                VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "lunges", withExtension: "MOV")!)).frame(height: 200)
                
                Group{
                Text ("Hip Thrusts")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()

                Text("Targets: glutes and hamstrings")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Lie on your back with your arms by your sides, your knees bent and your feet planted on the ground")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Squeeze your glutes, press through your heels and drive your hips up so you form a straight line from your knees to your shoulders")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                
                Group{
                    
                Text ("Goblet Squat")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()

                Text("Targets: quadriceps, glutes, hamstrings and calves")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Vertically hold a dumbbell, gripping it with both hands underneath the top of the weight")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Inhale and begin to squat, sitting back in your hips, keeping your core tight and torso upright")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    
                }
                VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "goblet", withExtension: "MOV")!)).frame(height: 200)
                
            }
            //background(Color.gray)
            .padding(16)
        }
        .frame(maxHeight: .infinity)
        
    }
}


struct LegWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        LegWorkoutView()
    }
}
