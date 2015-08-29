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
        let trainingPlan = TrainingPlan(name: "OffSeason Workout",
            exerciseList: [TrainingPlanExercise(name: "Foam Rolling", description: "The calves, IT bands, quadriceps and hamstrings are all targeted. “There’s no prescribed amount of time,” Millender says. “It’s all based on how he feels. If he felt something tight or uncomfortable, he would hold that spot for about 20 seconds, then he’d start working above and below it. ”"),
                TrainingPlanExercise(name: "Physioball Side-Lying Hip Abduction", description: "Use your heel to hold a physioball off the ground against a wall. Gently roll the ball up and down using your heel. “That’s to get the gluteus medius firing,” Millender says. “If that’s strong and working properly, it can help protect the knee.” Do 10 reps for each leg."),
                TrainingPlanExercise(name: "Single-Arm, Single-Leg RDL Row with Versapulley", description: "Balance on your left leg holding the pulley in your right hand at shoulder height. With your standing leg slightly bent and your back flat, bend forward at the waist until your arm is fully extended, then flex your glute to extend your hip and return to the upright position, rowing the pulley back toward your torso as you stand."),
                TrainingPlanExercise(name: "TRX Inverted Row", description: "Hold the handles of the TRX straps with your palms facing in. Keeping your core engaged, pull yourself up until your chest is even with your hands. Lower to the starting position and repeat."),
                TrainingPlanExercise(name:"Rope Pull", description: "Performed on a rope machine (which provides an endless revolving rope), this movement is simple. Get in an athletic stance and pull the rope down using a hand-over-hand movement."),
                TrainingPlanExercise(name: "Dumbbell Deficit Reverse Lunge", description: "Stand on a 6- to 8-inch box holding a dumbbell in each hand. Keep your shoulders engaged down and in. Step back with one leg, bending the other so that the knee of your lower leg almost kisses the floor. Push through your standing leg to return to the starting position."),
                TrainingPlanExercise(name: "TRX Plank", description: "Place your feet facing down inside the TRX handles and set your forearms on the ground beneath your shoulders. Engage your core to elevate your body into a plank position. For an additional challenge, use your forearms to slide your body forward and backward.")])
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
