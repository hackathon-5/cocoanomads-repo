//
//  TrainingPlanDataSource.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/29/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation
import UIKit


typealias TrainingPlanTableViewCellConfigureBlock = (cell:UITableViewCell, item:AnyObject?) -> ()

protocol TrainingPlanDataSourceDelegate {
    func trainingPlanItemSelected(exercise:TrainingPlanExercise)
}

class TrainingPlanDataSource:NSObject, UITableViewDataSource,UITableViewDelegate {
    
    var configureCellBlock:TrainingPlanTableViewCellConfigureBlock?
    var delegate: TrainingPlanDataSourceDelegate?
    
    var items: [AnyObject]
    var cellIdentifier: String
    
    init(items: [AnyObject]!, cellIdentifier: String!, configureBlock: TrainingPlanTableViewCellConfigureBlock) {
        self.items = items
        self.cellIdentifier = cellIdentifier
        self.configureCellBlock = configureBlock
        
        super.init()
    }
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let tableCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! TrainingPlanItemTableViewCell
        
        let planExercise = self.itemAtIndexPath(indexPath) as TrainingPlanExercise
        
        if (self.configureCellBlock != nil) {
            self.configureCellBlock!(cell: tableCell, item: planExercise)
        }
        
        return tableCell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedExercise = self.itemAtIndexPath(indexPath) as TrainingPlanExercise
        self.delegate?.trainingPlanItemSelected(selectedExercise)
    }
    
    func itemAtIndexPath(indexPath: NSIndexPath)->TrainingPlanExercise {
        return self.items[indexPath.row] as! TrainingPlanExercise
    }
    
}