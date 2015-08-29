//
//  WTeamData.swift
//  TrainingPlan
//
//  Created by tg on 8/29/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation


class WTeamData {
    
    var teamMemberList = [
        WTeamMemberData(name: "Appleby McFriday"),
        WTeamMemberData(name: "Chex Lemeneux"),
        WTeamMemberData(name: "Jenny Fromdabloc"),
        WTeamMemberData(name: "Krispy Kreme McDonalds"),
        WTeamMemberData(name: "Martin Sugar"),
        WTeamMemberData(name: "Ricky Spanish"),
        WTeamMemberData(name: "Scotch Bingington"),
        WTeamMemberData(name: "Tony Two Times")
    ]
    
    var teamMemberTotal:Int {
        return teamMemberList.count
    }
    
    func teamMemberAtIndex(index:Int)->WTeamMemberData? {
        if index >= 0 && index < teamMemberTotal {
            return teamMemberList[index]
        }else {
            return nil
        }
    }
}