//
//  DB_Tables.swift
//  Big Gainz
//
//  Created by Jason Leong on 3/30/22.
//

import Foundation
import SQLite3

class FormTable {
    var user_name: String
    var user_weight: Int
    var user_height: String
    var user_age: Int
    
    init(user_name: String, user_weight: Int, user_height: String, user_age: Int) {
        self.user_name = user_name
        self.user_weight = user_weight
        self.user_height = user_height
        self.user_age = user_age
    }
}

class VideoTable {
    var video_name: String
    var exercise_type: String
    var muscle_group: String
    var tips_description: String
    var exercise_video: String //Store Path of Video
    
    init(video_name: String, exercise_type: String, muscle_group: String, tips_description: String, exercise_video: String) {
        self.video_name = video_name
        self.exercise_type = exercise_type
        self.muscle_group = muscle_group
        self.tips_description = tips_description
        self.exercise_video = exercise_video
    }
}

class LogTable{
    var exercise_name: String
    var set_num: Int
    var rep_num: Int
    var weight: Int
    var intensity: Int
    
    init(exercise_name: String, set_num: Int, rep_num: Int, weight: Int, intensity: Int) {
        self.exercise_name = exercise_name
        self.set_num = set_num
        self.rep_num = rep_num
        self.weight = weight
        self.intensity = intensity
    }
}
