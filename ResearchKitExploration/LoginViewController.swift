//
//  LoginViewController.swift
//  ResearchKitExploration
//
//  Created by Ayyanchira, Akshay Murari on 11/6/17.
//  Copyright © 2017 Akshay Ayyanchira. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        //logic for api login call
        
        let username = usernameTextField.text;
        let password = passwordTextField.text;
        
        if username == "group2" && password == "password"{
            performSegue(withIdentifier: "proceed_to_survey", sender: nil)
            
        }
        
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
