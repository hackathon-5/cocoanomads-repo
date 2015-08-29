//
//  WTrainingPlanSession.swift
//  TrainingPlan
//
//  Created by tg on 8/28/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation

class WTrainingPlanSession {
    
    var trainingPlanData:WTrainingPlanData!
    
    var currentExerciseIndex:Int = 0
    
    var currentExercise:WExerciseData {
        return self.trainingPlanData.exerciseList[currentExerciseIndex]
    }
    
    var allExercisesComplete:Bool {
        println("allExercisesComplete completedExerciseIndexList.count \(completedExerciseIndexList.count) : self.trainingPlanData.exerciseTotal \(self.trainingPlanData.exerciseTotal)")
        return self.completedExerciseIndexList.count >= self.trainingPlanData.exerciseTotal
    }
    
    var completedExerciseIndexList = [Int]()
    
    init(trainingPlanData:WTrainingPlanData){
        self.trainingPlanData = trainingPlanData
    }
    
    // Add to list of completed indicies
    func setIndexAsCompleted(completedIndex:Int){
        // check if index already exists
        if !checkIfIndexIsCompleted(completedIndex){
            self.completedExerciseIndexList.append(completedIndex)
        }
    }
    
    func checkIfIndexIsCompleted(index:Int)->Bool{
        
        let completedTotal = self.completedExerciseIndexList.count
        
        println("checkIfIndexIsCompleted: \(index) self.completedExerciseIndexList: \(self.completedExerciseIndexList)")
        for i in 0..<completedTotal {
            if self.completedExerciseIndexList[i] == index {
                return true
            }
        }
        return false
    }
    
    func nextExercise()->WExerciseData? {
        if allExercisesComplete {
            return nil
        }else {
            var nextIndex = currentExerciseIndex
            
            // Increment next index until there is an index that hasn't been completed
            while checkIfIndexIsCompleted(nextIndex){
                
                // Increment
                nextIndex++
                
                // wrap
                if nextIndex > (self.trainingPlanData.exerciseTotal - 1) {
                    nextIndex = 0
                }
            }
            println("nextIndex: \(nextIndex)")
            currentExerciseIndex = nextIndex
            return currentExercise
        }
    }
    
    func resetCompleted(){
        self.completedExerciseIndexList = [Int]()
    }
}