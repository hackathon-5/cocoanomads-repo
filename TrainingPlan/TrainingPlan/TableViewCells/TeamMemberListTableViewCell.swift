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
        self.imageView?.image = UIImage(named: item.imageName)
        self.imageView?.layer.cornerRadius = floor(self.frame.size.height/2);
        self.imageView?.layer.masksToBounds = true;
        self.imageView?.layer.borderWidth = 1.0;
        self.imageView?.layer.borderColor = UIColor.clearColor().CGColor;
    }
}
