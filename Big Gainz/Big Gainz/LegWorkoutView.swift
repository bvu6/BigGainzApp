//
//  LegWorkoutView.swift
//  Big Gainz
//
//  Created by Ben on 4/19/22.
//

import SwiftUI

struct LegWorkoutView: View {
    var body: some View {
        ScrollView {
            VStack() {
                Group{
                Text("Squat")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("Targets: quadriceps, hamstrings, glutes, abdominals, and calves")
                        .multilineTextAlignment(.center)
                Text("Stand with feet slightly wider than hip-width apart, with toes slightly turned outward")
                        .multilineTextAlignment(.center)
                Text("Tighten up your core to stabilize yourself, then with your chest thrust upward, start to shift your weight back into your heels")
                        .multilineTextAlignment(.center)
                Text("Continue to lower yourself until your thighs are almost parallel to the floor. Your feet should remain flat on the ground")
                        .multilineTextAlignment(.center)
                
                Text ("Walking Lunges")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("Targets: Quadriceps, glutes, hamstrings, calves, core")
                Text("Take a wide step forward with your right foot—plant it roughly two feet ahead, allowing your left heel to lift naturally as you step forward")
                Text("Bend both knees and lower your back knee toward the floor. Stop just before it touches down")
                }
                Group{
                Text ("Hip Thrusts")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))

                Text("Targets: glutes and hamstrings")
                Text("Lie on your back with your arms by your sides, your knees bent and your feet planted on the ground")
                Text("Squeeze your glutes, press through your heels and drive your hips up so you form a straight line from your knees to your shoulders")
                    
                Text ("Goblet Squat")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))

                Text("Targets: quadriceps, glutes, hamstrings and calves")
                Text("Vertically hold a dumbbell, gripping it with both hands underneath the top of the weight")
                Text("Inhale and begin to squat, sitting back in your hips, keeping your core tight and torso upright")
                }

                
            }
            //background(Color.gray)
        }
        .frame(height: 350)

    }
}

struct LegWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        LegWorkoutView()
    }
}
