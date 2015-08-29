//
//  WExerciseSessionData.swift
//  TrainingPlan
//
//  Created by tg on 8/28/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation

enum ExerciseState:Int, Printable{
    case NotStarted, Active, Completed
    
    var stateName: String {
        let nameList = ["NotStarted", "Active", "Completed"]
        return nameList[rawValue]
    }
    
    var description: String {
        return ""
    }
}

class WExerciseSessionData {
    
    var state:ExerciseState = .NotStarted
    var index:Int = 0
}