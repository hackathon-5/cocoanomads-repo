//
//  TrainingSessionCompletionViewController.swift
//  TrainingPlan
//
//  Created by Alondo  on 8/28/15.
//  Copyright (c) 2015 CocoaNomads. All rights reserved.
//

import UIKit

class TrainingSessionCompletionViewController: UIViewController {
    @IBOutlet var sessionResultLabel: UILabel!
    @IBOutlet var teamWorkSessionInfoLabel: UILabel!
    
    var viewModel: TrainingSessionCompletionViewModel {
        didSet {
            sessionResultLabel.text = viewModel.sessionResult
            teamWorkSessionInfoLabel.text = viewModel.teamWorkoutInfo
        }
    }
    
    convenience init () {
        self.init()
        let sessionResultLabel = UILabel ()
        let teamWorkSessionInfoLabel = UILabel ()
    }

    required init(coder aDecoder: NSCoder) {
        let trainingSession = TrainingSession.sampleTrainingSession()
        viewModel = TrainingSessionCompletionViewModelFromTrainingSession(trainingSession)
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
