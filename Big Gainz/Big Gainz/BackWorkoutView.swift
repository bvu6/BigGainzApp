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
                    Spacer()
                Text("Targets: upper back and improves your posture and protect your shoulders")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Avoid lifting your elbows up and out, which engages the biceps instead of the lats and rhomboids")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Shrugged shoulders and when you pull the weight, keep your shoulders back and down")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                Group{
                    
                Text ("Lat Pull-Down")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()
                Text("Targets: shoulders and entire back")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Grasp the bar with a wide grip with an overhand, knuckles-up grip. Pull the bar down until it's approximately level with the chin. Exhale on the downward motion and squeeze the shoulder blades together")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("From the bottom position, with the bar close to your chin, slowly return the bar to the starting position")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                Group{
                Text ("Single Arm Cable Row")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()
                Text("Targets: lats, teres major, middle and lower trap")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Grab the stirrup handle in your right hand with an overhand grip. Sit up straight with arm out in front.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Exhale as you pull the handle toward your waist, rotating it so that your palm is facing in when it reaches your side. Pause for a moment and then return to the starting position using slow and controlled movements")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                
                Group{
                Text ("Deadlift")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("Targets: hamstrings, glutes, back, hips, core, and trapezius.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Stand with your mid-foot under the barbell and bend over to grab the bar with a shoulder-width grip")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("After that, bend your knees until your shins touch the bar, lift your chest up and straighten your lower back. Take a big breath, hold it, and stand up with the weight")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                
                }
                
            }
            //background(Color.gray)
            .padding(16)
        }
        .frame(height: 550)

    }
}

struct BackWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        BackWorkoutView()
    }
}
