//
//  TrainingPlanViewController.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/28/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import UIKit

class TrainingPlanViewController: UIViewController {
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
        let trainingPlan = TrainingPlan.sampleTrainingPlan()
        viewModel = TrainingPlanViewModelFromTrainingPlan(trainingPlan)
        exerciseList = viewModel.exerciseList
        planTitle = viewModel.title
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = TrainingPlanDataSource(items: TrainingPlan.sampleTrainingPlan().planExerciseList,
            cellIdentifier: "Cell",
            configureBlock: { (cell, item) -> () in
                if let actualCell = cell as? TrainingPlanTableViewCell {
                    if let actualItem = item as? TrainingPlanExercise {
                        actualCell.configureForItem(actualItem)
                    }
                }
              
        })
        setupDatasource()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func configureCell(cell:UITableViewCell, planExercise:TrainingPlanExercise) {
        
       
       
    }
    
    func setupDatasource() {

       tableView.dataSource = dataSource
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
