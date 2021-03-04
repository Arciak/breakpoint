//
//  AuthVC.swift
//  breakpoint
//
//  Created by Artur Zarzecki on 04/03/2021.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func googleSigInBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func facebookSignInBtnWasPressed(_ sender: Any) {
    }
    
}
