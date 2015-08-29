//
//  TrainingPlanViewModel.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/28/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation

protocol TrainingPlanViewModel {
    var title: String { get }
    var exerciseList: [TrainingPlanExercise] { get }
}

class TrainingPlanViewModelFromTrainingPlan: TrainingPlanViewModel {
    let trainingPlan : TrainingPlan
    let title: String
    let exerciseList: [TrainingPlanExercise]
    
    init (_ trainingPlan: TrainingPlan) {
        self.trainingPlan = trainingPlan
        
        self.title = self.trainingPlan.planName
        self.exerciseList = self.trainingPlan.planExerciseList
    }
    
}