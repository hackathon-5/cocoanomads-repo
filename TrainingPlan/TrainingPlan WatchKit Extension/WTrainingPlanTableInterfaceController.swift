//
//  TrainingPlanTableInterfaceController.swift
//  TrainingPlan
//
//  Created by tg on 8/28/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import WatchKit
import Foundation


class WTrainingPlanTableInterfaceController: WKInterfaceController {
    
    var trainingPlanSession:WTrainingPlanSession!
    
    let trainingPlanTableRowID = "TrainingPlanTableRowID"
    let wExerciseInterfaceControllerID = "WExerciseInterfaceControllerID"
    let wTeamMemberTableIC = "WTeamMemberTableIC"


    @IBOutlet weak var table: WKInterfaceTable!
    
    @IBAction func onMenuPeople() {
        presentControllerWithName(wTeamMemberTableIC, context: nil)
    }
    @IBAction func onMenuReset() {
        trainingPlanSession.resetCompleted()
        updateCompleted()
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        setup()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        updateCompleted()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func setup(){
        
        trainingPlanSession = WTrainingPlanSession(trainingPlanData: WTrainingPlanData())
        
        let trainingPlanData = trainingPlanSession.trainingPlanData
        table.setNumberOfRows(trainingPlanData.exerciseTotal, withRowType: trainingPlanTableRowID)
        for (index, data) in enumerate(trainingPlanData.exerciseList){
            if let row = table.rowControllerAtIndex(index) as? WTrainingPlanTableRow {
                row.titleLabel.setText("\(data.name)")

            }
        }
    }
    
    func updateCompleted() {
        let trainingPlanData = trainingPlanSession.trainingPlanData
        for (index, data) in enumerate(trainingPlanData.exerciseList){
            if let row = table.rowControllerAtIndex(index) as? WTrainingPlanTableRow {

                let doneText = trainingPlanSession.checkIfIndexIsCompleted(index) ? "DONE" : ""
                row.statusLabel.setText("\(doneText)")
            }
        }
    }
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        
        if !trainingPlanSession.checkIfIndexIsCompleted(rowIndex) {
        trainingPlanSession.currentExerciseIndex = rowIndex
        presentControllerWithName(wExerciseInterfaceControllerID, context: trainingPlanSession)
        }
    }
}