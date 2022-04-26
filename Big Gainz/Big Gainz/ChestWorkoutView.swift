//
//  ChestWorkoutView.swift
//  Big Gainz
//
//  Created by Ben on 4/19/22.
//

import SwiftUI

struct ChestWorkoutView: View {
    var body: some View {
        ScrollView {
            VStack() {
                Group{
                Text("Bench Press")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("Works the pectoral muscles, shoulders, and arms")
                        .multilineTextAlignment(.center)
                Text("Lie on your back on a flat bench. Grip a barbell with hands slightly wider than shoulder width. The bar should be directly over the shoulders")
                        .multilineTextAlignment(.center)
                Text("Keep your core engaged and maintain a neutral spine position throughout the movement and avoid arching your back.")
                        .multilineTextAlignment(.center)
                    
                Text ("Incline Dumbell Press")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("Works on the pectoral muscles in your chest, the triceps on the backside of your arms, and the anterior deltoid muscles on the front of your shoulders")
                            .multilineTextAlignment(.center)
                Text("Brace your core and press both dumbbells straight up over your chest as you exhale. At the top of the movement, the dumbbells should almost touch each other and your arms should be perpendicular to the floor")
                            .multilineTextAlignment(.center)
                Text("Reverse the movement and slowly lower the dumbbells back to the top of your chest as you inhale.")
                            .multilineTextAlignment(.center)
                }
                Text ("Cable Decline Press")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("Position the cable handles approximately level with the top of your head and grasp each handle firmly")
                            .multilineTextAlignment(.center)
                Text("Exhale gently and slowly squeeze your chest muscles to pull your arms forward until your hands meet below the level of your chest")
                            .multilineTextAlignment(.center)
                Text("Maintain the slight bend in your elbows, neutral wrist position and vertical alignment of your trunk throughout the movement")
                            .multilineTextAlignment(.center)
                
                Text ("Low Cable Flies")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("With two cable handles aligned low and a light weight selected, grab the handles stepping forward slightly")
                            .multilineTextAlignment(.center)
                Text("Keeping the elbows pulled in towards your sides, exhale, contracting through the chest and bringing the handles up and in until your elbows are aligned with the middle of your chest")
                            .multilineTextAlignment(.center)
                Text("Inhale, slowly lowering down keeping the elbows pulled in")
                            .multilineTextAlignment(.center)
                
                
            }
            //background(Color.gray)
        }
        .frame(height: 350)

    }
}

struct ChestWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        ChestWorkoutView()
    }
}
