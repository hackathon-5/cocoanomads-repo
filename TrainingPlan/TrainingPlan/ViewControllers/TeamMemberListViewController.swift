//
//  TeamMemberListViewController.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/29/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import Foundation
import UIKit

class TeamMemberListViewController: UIViewController, TeamMemberDataSourceDelegate {
    let teamMemberItemCellIdentifier = "TeamMemberItemCell"
    var memberList: [TeamMember]
    var teamTitle: String
    
    @IBOutlet weak var tableView: UITableView!
    var teamMemberDataSource: TeamMemberDataSource!
    
    var viewModel: TeamMemberListViewModel {
        didSet {
            teamTitle = viewModel.title
            memberList = viewModel.memberList
        }
    }
    
    convenience init () {
        self.init()
    }
    
    required init(coder aDecoder: NSCoder) {
        // loading sample data
        // TODO: replace with real data
        let team = Team.sampleTeam()
        
        viewModel = TeamMemberListViewModelFromTeam(team)
        memberList = viewModel.memberList
        teamTitle = viewModel.title
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(TeamMemberListTableViewCell.self, forCellReuseIdentifier: teamMemberItemCellIdentifier)
        
        teamMemberDataSource = TeamMemberDataSource(items: Team.sampleTeam().teamMembers,
            cellIdentifier: teamMemberItemCellIdentifier,
            configureBlock: { (cell, item) -> () in
                if let actualCell = cell as? TeamMemberListTableViewCell {
                    if let actualItem = item as? TeamMember {
                        actualCell.configureForItem(actualItem)
                    }
                }
        })
        teamMemberDataSource.delegate = self
        setupDatasource()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupDatasource() {
        self.tableView.dataSource = teamMemberDataSource
        self.tableView.reloadData()
    }
    
    func teamMemberSelected(teamMember: TeamMember) {
        // navigate to Team Member Screen with selected team member
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let path = self.tableView.indexPathForSelectedRow() {
            if segue.identifier == "showPlayerDetail" {
                let sessionVC = segue.destinationViewController as! TrainingSessionExerciseViewController
                // TODO: Assign a value to load the training session info
                
            }
        }
        
    }

}