//
//  ChestWorkoutView.swift
//  Big Gainz
//
//  Created by Ben on 4/19/22.
//

import SwiftUI
import AVKit

struct ChestWorkoutView: View {
    @State private var player = AVPlayer()
    var body: some View {
        ScrollView {
            VStack() {
 
                Group{
                Text("Bench Press")
                        .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()
                Text("Targets: pectoral muscles, shoulders, and arms")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Lie on your back on a flat bench. Grip a barbell with hands slightly wider than shoulder width. The bar should be directly over the shoulders")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Keep your core engaged and maintain a neutral spine position throughout the movement and avoid arching your back.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    VideoView(videoID: "GSVQYcDlc-0")
                        .frame(height: 200)
                    Spacer()
                }
                Group{
                Text ("Incline Dumbell Press")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                    Spacer()
                Text("Targets: pectoral muscles in your chest, the triceps on the backside of your arms, and the anterior deltoid muscles on the front of your shoulders")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Brace your core and press both dumbbells straight up over your chest as you exhale. At the top of the movement, the dumbbells should almost touch each other and your arms should be perpendicular to the floor")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Reverse the movement and slowly lower the dumbbells back to the top of your chest as you inhale.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    VideoView(videoID: "whqrN08ZLqU")
                        .frame(height: 200)
                    Spacer()
                }
                Group{
                Text ("Cable Decline Press")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("Position the cable handles approximately level with the top of your head and grasp each handle firmly")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Exhale gently and slowly squeeze your chest muscles to pull your arms forward until your hands meet below the level of your chest")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Maintain the slight bend in your elbows, neutral wrist position and vertical alignment of your trunk throughout the movement")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    VideoView(videoID: "WK-sD68viPs")
                        .frame(height: 200)
                    Spacer()
                }

                Group{
                Text ("Low Cable Flies")
                    .font(.system(size: 24, weight: .semibold, design:.rounded))
                Text("With two cable handles aligned low and a light weight selected, grab the handles stepping forward slightly")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Keeping the elbows pulled in towards your sides, exhale, contracting through the chest and bringing the handles up and in until your elbows are aligned with the middle of your chest")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                Text("Inhale, slowly lowering down keeping the elbows pulled in")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    VideoView(videoID: "Q02qkZgrle0")
                        .frame(height: 200)
                    Spacer()
                }
                
                
                
            }
            .background(Color.gray)
            .padding(16)
            
        }
        .frame(height: .infinity)
        .background(Color.gray)

    }
}

struct ChestWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        ChestWorkoutView()
    }
}
