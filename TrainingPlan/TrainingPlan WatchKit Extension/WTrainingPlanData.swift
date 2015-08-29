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
        WExerciseData(name: "Foam Rolling"),
        WExerciseData(name: "IYT Rows"),
        WExerciseData(name: "Physioball Side-Lying Hip Abduction"),
        WExerciseData(name: "Single-Arm, Single-Leg RDL Row with Versapulley"),
        WExerciseData(name: "TRX Inverted Row"),
        WExerciseData(name: "Rope Pull"),
        WExerciseData(name: "Dumbbell Deficit Reverse Lunge"),
        WExerciseData(name: "TRX Plank"),
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