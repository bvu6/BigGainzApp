//
//  BackWorkoutView.swift
//  Big Gainz
//
//  Created by Ben on 4/19/22.
//

import SwiftUI

struct BackWorkoutView: View {
    var body: some View {
        ScrollView {
            VStack() {
                Group{
                Text("Seated Row")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("Targets the muscles in your upper back and also helps improve your posture and protect your shoulders")
                        .multilineTextAlignment(.center)
                Text("Avoid lifting your elbows up and out, which engages the biceps instead of the lats and rhomboids")
                        .multilineTextAlignment(.center)
                Text("Shrugged shoulders and when you pull the weight, keep your shoulders back and down")
                        .multilineTextAlignment(.center)
                    
                Text ("Lat Pull-Down")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("Targets the shoulders and entire back")
                        .multilineTextAlignment(.center)
                Text("Grasp the bar with a wide grip with an overhand, knuckles-up grip. Pull the bar down until it's approximately level with the chin. Exhale on the downward motion and squeeze the shoulder blades together")
                        .multilineTextAlignment(.center)
                Text("From the bottom position, with the bar close to your chin, slowly return the bar to the starting position")
                        .multilineTextAlignment(.center)
                }
                Group{
                Text ("Single Arm Cable Row")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("Unilateral exercise that targets the lats, teres major, middle and lower trap")
                        .multilineTextAlignment(.center)
                Text("Grab the stirrup handle in your right hand with an overhand grip. Sit up straight with arm out in front.")
                        .multilineTextAlignment(.center)
                Text("Exhale as you pull the handle toward your waist, rotating it so that your palm is facing in when it reaches your side. Pause for a moment and then return to the starting position using slow and controlled movements")
                        .multilineTextAlignment(.center)
                
                
                Text ("Deadlift")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("Deadlift works on many muscles such as hamstrings, glutes, back, hips, core, and trapezius.")
                        .multilineTextAlignment(.center)
                Text("Stand with your mid-foot under the barbell and bend over to grab the bar with a shoulder-width grip")
                        .multilineTextAlignment(.center)
                Text("After that, bend your knees until your shins touch the bar, lift your chest up and straighten your lower back. Take a big breath, hold it, and stand up with the weight")
                        .multilineTextAlignment(.center)
                
                }
                
            }
            //background(Color.gray)
        }
        .frame(height: 350)

    }
}

struct BackWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        BackWorkoutView()
    }
}
