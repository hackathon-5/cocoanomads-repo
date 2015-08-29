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
        WTeamMemberData(name: "Appleby McFriday", emoticon:"😁"),
        WTeamMemberData(name: "Chex Lemeneux", emoticon:"😂"),
        WTeamMemberData(name: "Jenny Fromdabloc", emoticon:"😃"),
        WTeamMemberData(name: "Krispy Kreme McDonalds", emoticon:"😉"),
        WTeamMemberData(name: "Martin Sugar", emoticon:"😋"),
        WTeamMemberData(name: "Ricky Spanish", emoticon:"😍"),
        WTeamMemberData(name: "Scotch Bingington", emoticon:"😡"),
        WTeamMemberData(name: "Tony Two Times", emoticon:"😭")
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