//
//  TempClasses.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/29/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation

class TrainingPlan {
    var planName: String
    var planExerciseList: [TrainingPlanExercise]
    
    init (name: String, exerciseList: [TrainingPlanExercise]){
        planName = name
        planExerciseList = exerciseList
    }
    
    class func sampleTrainingPlan() -> TrainingPlan {
        let trainingPlan = TrainingPlan(name: "General Workout", exerciseList: [TrainingPlanExercise(name: "Push ups", description: "Push ups"), TrainingPlanExercise(name: "Sit ups", description: "Sit ups")
            , TrainingPlanExercise(name: "Jumping Jacks", description: "Jumping Jacks")
            , TrainingPlanExercise(name: "Box Squats", description: "Box Squats")])
        return trainingPlan
    }
}

class TrainingPlanExercise {
    var exerciseName: String
    var exerciseDescription: String?
    
    init (name: String, description: String){
        exerciseName = name
        exerciseDescription = description
    }
}

class TrainingSession {
    var sessionDate: NSDate
    var sessionExerciseList: [TrainingSessionExercise]
    
    init (date: NSDate, exerciseList: [TrainingSessionExercise]) {
        self.sessionDate = NSDate()
        self.sessionExerciseList = exerciseList
    }
    
    class func sampleTrainingSession() -> TrainingSession {
        let trainingPlan = TrainingPlan.sampleTrainingPlan()
        let trainingSession = TrainingSession(date: NSDate(), exerciseList: [TrainingSessionExercise(exercise: trainingPlan.planExerciseList[0], status: 0), TrainingSessionExercise(exercise: trainingPlan.planExerciseList[1], status: 0)
            , TrainingSessionExercise(exercise: trainingPlan.planExerciseList[2], status: 0)
            , TrainingSessionExercise(exercise: trainingPlan.planExerciseList[3], status: 1)])
        return trainingSession
    }
}

class TrainingSessionExercise {
    var sessionExercise: TrainingPlanExercise
    var exerciseStatus: Int
    
    init (exercise: TrainingPlanExercise, status: Int){
        self.sessionExercise = exercise
        self.exerciseStatus = status
    }
}


class TeamMember {
    var firstName: String
    var lastName: String
    var imageName: String
    
    init (firstName: String, lastName: String, imageName: String){
        self.firstName = firstName
        self.lastName = lastName
        self.imageName = imageName
    }
}

class Team {
    var teamTitle: String
    var teamMembers: [TeamMember]
    
    init (teamTitle: String, members: [TeamMember]) {
        self.teamTitle = teamTitle
        self.teamMembers = members
    }
    
    class func sampleTeam() -> Team {
        let team = Team (teamTitle: "Langley Falls Dynamos",
            members: [TeamMember(firstName: "AppleBy", lastName: "McFriday", imageName: "appleby"),
            TeamMember(firstName: "Chex", lastName: "Lemeneux", imageName: "chex"),
            TeamMember(firstName: "Jenny", lastName: "Fromdabloc", imageName: "jenny"),
            TeamMember(firstName: "Krispy Kreme", lastName: "McDonalds", imageName: "krispy"),
            TeamMember(firstName: "Martin", lastName: "Sugar", imageName: "martin"),
            TeamMember(firstName: "Ricky", lastName: "Spanish", imageName: "ricky"),
            TeamMember(firstName: "Scotch", lastName: "Bingington", imageName: "scotch"),
            TeamMember(firstName: "Tony", lastName: "TwoTimes", imageName: "tony"),
            ])
        return team
    }
}
