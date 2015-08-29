//
//  TeamMemberListViewModel.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/29/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation

protocol TeamMemberListViewModel {
    var title: String { get }
    var memberList: [TeamMember] { get }
}

class TeamMemberListViewModelFromTeam: TeamMemberListViewModel {
    let team: Team
    let title: String
    let memberList: [TeamMember]
    
    init (_ team: Team){
        self.team = team
        
        self.title = team.teamTitle
        self.memberList = team.teamMembers
    }
}