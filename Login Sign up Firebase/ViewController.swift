//
//  ViewController.swift
//  Login Sign up Firebase
//
//  Created by Nilrajsinh Vaghela on 28/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import Firebase


class ViewController: UIViewController {
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    @IBAction func Login(_ sender: UIButton) {
        
        Auth.auth().signIn(withEmail: Email.text!, password: Password.text!) { (user, error) in
            if user != nil {
                print("Done")
            }
        }
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

