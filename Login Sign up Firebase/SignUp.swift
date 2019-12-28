//
//  SignUp.swift
//  Login Sign up Firebase
//
//  Created by Nilrajsinh Vaghela on 28/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import Firebase

class SignUp: UIViewController {

    @IBOutlet weak var emailS: UITextField!
    
    @IBOutlet weak var Passwords: UITextField!
    

    @IBAction func Reg(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: emailS.text!, password: Passwords.text!) { (user, error) in
            if user != nil{
                print("Registerd")
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
