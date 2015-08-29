//
//  WExerciseDataManager.swift
//  TrainingPlan
//
//  Created by tg on 8/28/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation

class WTrainingPlanData {
    
    
    
    var exerciseList:[WExerciseData] = [
        WExerciseData(name: "Exercise 0"),
        WExerciseData(name: "Exercise 1"),
        WExerciseData(name: "Exercise 2"),
        WExerciseData(name: "Exercise 3"),
        WExerciseData(name: "Exercise 4"),
        WExerciseData(name: "Exercise 5"),
        WExerciseData(name: "Exercise 6"),
        WExerciseData(name: "Exercise 7"),
        WExerciseData(name: "Exercise 8"),
        WExerciseData(name: "Exercise 9"),
        WExerciseData(name: "Exercise 10")
    ]
    
    var exerciseTotal:Int {
        return exerciseList.count
    }
    
    func exerciseDataAtIndex(index:Int)->WExerciseData? {
        
        if index >= 0 && index < exerciseTotal {
            return exerciseList[index]
        }else{
            return nil
        }
    }
    
}