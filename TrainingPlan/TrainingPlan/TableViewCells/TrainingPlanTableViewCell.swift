//
//  TrainingPlanTableViewCell.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/29/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation
import UIKit

class TrainingPlanTableViewCell: UITableViewCell {
    func configureForItem(item: TrainingPlanExercise){
        self.textLabel!.text = item.exerciseName
        self.detailTextLabel!.text = item.exerciseDescription
    }
}