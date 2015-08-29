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
    var dataSource: TrainingPlanDataSource!
    
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
        
        dataSource = TrainingPlanDataSource(items: TrainingPlan.sampleTrainingPlan().planExerciseList,
            cellIdentifier: trainingPlanItemCellIdentifier,
            configureBlock: { (cell, item) -> () in
                if let actualCell = cell as? TrainingPlanItemTableViewCell {
                    if let actualItem = item as? TrainingPlanExercise {
                        actualCell.configureForItem(actualItem)
                    }
                }
        })
        dataSource.delegate = self
        setupDatasource()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupDatasource() {
        self.tableView.dataSource = dataSource
        self.tableView.reloadData()
    }
    
    func trainingPlanItemSelected(exercise: TrainingPlanExercise) {
        // navigate to Exercise Screen with selected exercise
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let path = self.tableView.indexPathForSelectedRow()!
        
        if segue.identifier == "showSessionExercise" {
            let sessionVC = segue.destinationViewController as! TrainingSessionExerciseViewController
        // TODO: Assign a value to load the training session info

        }
    }
    

}
