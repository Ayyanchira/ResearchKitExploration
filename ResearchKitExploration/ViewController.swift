//
//  ViewController.swift
//  ResearchKitExploration
//
//  Created by Akshay Ayyanchira on 11/4/17.
//  Copyright © 2017 Akshay Ayyanchira. All rights reserved.
//

import UIKit
import ResearchKit

class ViewController: UIViewController,ORKTaskViewControllerDelegate {
    
    
    
    func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
        taskViewController.dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func consentClicked(_ sender: UIButton) {
        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }
    
    @IBAction func surveyClicked(_ sender: UIButton) {
    }
    
    @IBAction func activeTaskClicked(_ sender: UIButton) {
    }
    
    
}

