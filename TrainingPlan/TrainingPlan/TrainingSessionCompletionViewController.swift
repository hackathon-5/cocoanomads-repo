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
    
    init () {
        let sessionResultLabel = UILabel ()
        let teamWorkSessionInfoLabel = UILabel ()
        
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
