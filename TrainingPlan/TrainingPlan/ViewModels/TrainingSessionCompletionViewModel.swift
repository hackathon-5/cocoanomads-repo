//
//  TrainingSessionCompletionViewModel.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/28/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation

protocol TrainingSessionCompletionViewModel {
    var sessionResult: String { get }
    var teamWorkoutInfo: String { get }
}

class TrainingSessionCompletionViewModelFromTrainingSession: TrainingSessionCompletionViewModel {
    let trainingSession : TrainingSession
    let date: String
    let sessionResult: String
    let teamWorkoutInfo: String
    
    init (_ trainingSession: TrainingSession) {
        self.trainingSession = trainingSession
        
        self.sessionResult = "Successful Session!"
        self.teamWorkoutInfo = "You were the first team member to complete the session today!"
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        self.date = dateFormatter.stringFromDate(trainingSession.sessionDate)
    }
}