//
//  TeamMemberDataSource.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/29/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation
import UIKit

//
//  TeamMemberDataSource.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/29/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation
import UIKit

typealias TeamMemberListTableViewCellConfigureBlock = (cell:UITableViewCell, item:AnyObject?) -> ()

protocol TeamMemberDataSourceDelegate {
    func teamMemberSelected(teamMember:TeamMember)
}

class TeamMemberDataSource:NSObject, UITableViewDataSource,UITableViewDelegate {
    
    var configureCellBlock:TeamMemberListTableViewCellConfigureBlock?
    var delegate: TeamMemberDataSourceDelegate?
    
    var items: [AnyObject]
    var cellIdentifier: String
    
    init(items: [AnyObject]!, cellIdentifier: String!, configureBlock: TeamMemberListTableViewCellConfigureBlock) {
        self.items = items
        self.cellIdentifier = cellIdentifier
        self.configureCellBlock = configureBlock
        
        super.init()
    }
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let tableCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! TeamMemberListTableViewCell
        
        let planExercise = self.itemAtIndexPath(indexPath) as TeamMember
        
        if (self.configureCellBlock != nil) {
            self.configureCellBlock!(cell: tableCell, item: planExercise)
        }
        
        return tableCell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedExercise = self.itemAtIndexPath(indexPath) as TeamMember
        self.delegate?.teamMemberSelected(selectedExercise)
    }
    
    func itemAtIndexPath(indexPath: NSIndexPath)-> TeamMember {
        return self.items[indexPath.row] as! TeamMember
    }
    
}