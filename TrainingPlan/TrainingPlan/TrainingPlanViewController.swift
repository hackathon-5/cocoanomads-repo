//
//  TrainingPlanViewController.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/28/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import UIKit

class TrainingPlanViewController: UIViewController,TrainingPlanDataSourceDelegate {
    
    let trainingPlanItemCellIdentifier = "TrainingPlanItemCell"
    var exerciseList: [TrainingPlanExercise]
    var planTitle: String
   
    @IBOutlet weak var tableView: UITableView!
    var planDataSource: TrainingPlanDataSource!
    
    var viewModel: TrainingPlanViewModel {
        didSet {
            planTitle = viewModel.title
            exerciseList = viewModel.exerciseList
        }
    }
    
    convenience init () {
        self.init()
    }

    required init(coder aDecoder: NSCoder) {
        // loading sample data
        // TODO: replace with real data
        let trainingPlan = TrainingPlan.sampleTrainingPlan()
        
        viewModel = TrainingPlanViewModelFromTrainingPlan(trainingPlan)
        exerciseList = viewModel.exerciseList
        planTitle = viewModel.title
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(TrainingPlanItemTableViewCell.self, forCellReuseIdentifier: trainingPlanItemCellIdentifier)
        
        planDataSource = TrainingPlanDataSource(items: TrainingPlan.sampleTrainingPlan().planExerciseList,
            cellIdentifier: trainingPlanItemCellIdentifier,
            configureBlock: { (cell, item) -> () in
                if let actualCell = cell as? TrainingPlanItemTableViewCell {
                    if let actualItem = item as? TrainingPlanExercise {
                        actualCell.configureForItem(actualItem)
                    }
                }
        })
        planDataSource.delegate = self
        setupDatasource()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupDatasource() {
        self.tableView.dataSource = planDataSource
        self.tableView.delegate = planDataSource
    }
    
    func trainingPlanItemSelected(exercise: TrainingPlanExercise) {
        // navigate to Exercise Screen with selected exercise
        // navigate to Team Member Screen with selected team member
        let sessionVC = TrainingSessionExerciseViewController()
        self.navigationController?.pushViewController(sessionVC, animated: true)

    }
    
}
