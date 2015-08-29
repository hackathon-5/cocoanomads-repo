//
//  WTeamMemberDetatilInterfaceController.swift
//  TrainingPlan
//
//  Created by tg on 8/29/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import WatchKit
import Foundation


class WTeamMemberDetailInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var nameLabel: WKInterfaceLabel!
    
    var teamMemberData:WTeamMemberData!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        teamMemberData = context as! WTeamMemberData
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        nameLabel.setText(teamMemberData.name)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}
