//
//  WTeamMemberListInterfaceController.swift
//  TrainingPlan
//
//  Created by tg on 8/29/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import WatchKit
import Foundation


class WTeamMemberTableInterfaceController: WKInterfaceController {
    
    var teamMemberTableRowID = "TeamMemberTableRowID"
    var wTrainingPlanTableIC = "WTrainingPlanTableIC"
    var wTeamMemberDetailIC = "WTeamMemberDetailIC"
    let teamData = WTeamData()
    
    @IBOutlet weak var table: WKInterfaceTable!
    
    @IBAction func onMenuMe() {
//        presentControllerWithName(wTrainingPlanTableIC, context: nil)
        dismissController()
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        setup()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func setup() {

        table.setNumberOfRows(teamData.teamMemberTotal, withRowType: teamMemberTableRowID)
        for (index, data) in enumerate(teamData.teamMemberList) {
            if let row = table.rowControllerAtIndex(index) as? WTeamMemberTableRow {
                row.nameLabel.setText("\(data.name)")
            }
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        presentControllerWithName(wTeamMemberDetailIC, context: teamData.teamMemberAtIndex(rowIndex))
    }
    
}
