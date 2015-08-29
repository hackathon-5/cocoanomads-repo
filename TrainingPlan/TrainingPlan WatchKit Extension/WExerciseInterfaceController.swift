//
//  ExerciseInterfaceController.swift
//  TrainingPlan
//
//  Created by tg on 8/28/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import WatchKit
import Foundation


class WExerciseInterfaceController: WKInterfaceController {
    
    var session:WTrainingPlanSession!
    
    @IBOutlet weak var exerciseLabel: WKInterfaceLabel!
    @IBOutlet weak var completeButton: WKInterfaceButton!
    @IBAction func onCompleteButton() {
        

            println("next")
            session.setIndexAsCompleted(session.currentExerciseIndex)
        
        if session.allExercisesComplete {
            println("all Exercises Complete")
            exerciseLabel.setText("All Complete")
            completeButton.setEnabled(false)
            completeButton.setAlpha(0)
        }else {
            session.nextExercise()
            displayCurrentExercise()
        }

    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        session = context as! WTrainingPlanSession
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        completeButton.setEnabled(true)
        completeButton.setTitle("Complete")
        displayCurrentExercise()
        completeButton.setAlpha(1)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func displayCurrentExercise() {
        let exerciseName = session.currentExercise.name
        println("Display Current Exercise: \(exerciseName)")
        exerciseLabel.setText(exerciseName)
    }
}