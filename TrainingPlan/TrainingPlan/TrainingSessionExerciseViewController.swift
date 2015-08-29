//
//  TrainingSessionExerciseViewController.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/28/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import UIKit

class TrainingSessionExerciseViewController: UIViewController {
    
    @IBOutlet weak var exerciseNameLabel : UILabel!
    @IBOutlet weak var exerciseDetailLabel : UILabel!
    @IBOutlet weak var exerciseCompleteButton: UIButton!
    @IBOutlet weak var exerciseCancelButton: UIButton!
    
    var sessionExercise : TrainingPlanExercise? {
        didSet {
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func quit(sender:UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func complete(sender:UIButton) {
        
    }

    
    func configureView () {
        exerciseNameLabel.text = sessionExercise?.exerciseName
        exerciseDetailLabel.text = sessionExercise?.exerciseDescription
    }
    
}
