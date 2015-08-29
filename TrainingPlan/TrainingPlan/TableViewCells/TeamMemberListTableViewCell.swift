//
//  TeamMemberListTableViewCell.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/29/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation
import UIKit

class TeamMemberListTableViewCell: UITableViewCell {
    func configureForItem(item: TeamMember){
        self.textLabel!.text = item.firstName + " " + item.lastName
        self.detailTextLabel?.text = "Item Description" //item.exerciseDescription
        self.imageView?.image = UIImage(named: item.imageName)
    }
}
